require 'net/http'
require 'uri'
require 'json'
require 'fileutils'

class TradeProxy

  def initialize(url, username, password, env, path)
    @url = url
    @user = username
    @password = password
    @env = env
    @path = path
  end

  def trade(cml, &block)
  
    @trade_id = (0...8).map { (65 + rand(26)).chr }.join
    @cml = cml
    @tags = {}
    @tags['{{CODE}}'] = @trade_id
    @real_trade_id = nil
    @keywords = {}
    @keywords['CODIFIER-convention'] = @trade_id
    
    begin
      if block_given?
        instance_eval(&block)
      end
    rescue Exception => e
      puts e
      puts e.backtrace
    end
  end
  
  def method_missing(method_sym, *arguments, &block)
  
    tag = '{{' + method_sym.to_s.upcase + '}}'
    
    if @cml.include? tag
      @tags[tag] = arguments.first
    else
      super
    end
  end
  
  def generate_cml
  
    cml = @cml.clone
    @tags.each do |tag, value|
      cml.gsub! tag, value
    end
    
    # set the keywords
    
    keywords = ''
    @keywords.each do |tag, value|
      keywords += '<calypso:keyword>'
      keywords += "<calypso:name>#{tag}</calypso:name>"
      keywords += '<calypso:value xsi:type="ns3:string" '
      keywords += 'xmlns:ns3="http://www.w3.org/2001/XMLSchema">'
      keywords += "#{value}</calypso:value>"
      keywords += '</calypso:keyword>'
    end
    cml.gsub! "{{KEYWORDS}}", keywords
    
    return cml
  end
  
  def export_messages_for_regression
  
    sleep 5
    
    res = query_calypso("select * from bo_message where trade_id = " + 
      @real_trade_id.to_s)
    
    FileUtils::mkdir_p @path
    
    json = JSON.parse res
    json.each_with_index do |message, index|
    
      mess =  get_message(message['MESSAGE_ID'])
      json_mess = JSON.parse mess
      
      doc = json_mess["doc"]
      suffix = ".txt"
      
      if doc =~ /xml version/
        suffix = ".xml"
      end
      
      File.write(@path + '/' + index.to_s + '_' + message['MESSAGE_TYPE'] + suffix , doc)
    end
  end
  
  def save_trade(user)
    cml = generate_cml
    
    res = send_cml_to_agent(cml)
    
    puts res
    
    json = JSON.parse res
    
    json['keywords'].each do |key|
      @keywords[key['name']] = key['value']
    end
    
    @real_trade_id = json['tradeId']
  end
  
  def query_calypso(sql)
  
    url = @url + 'query'
    uri = URI.parse(url)

    params = {query: sql, user: @user, password: @password, env: @env }
    uri.query = URI.encode_www_form(params)

    res = Net::HTTP.get_response(uri)
 
    return res.body
  end
  
  def get_message(id)
  
    url = @url + 'document'
    uri = URI.parse(url)

    params = { id: id, user: @user, password: @password, env: @env }
    uri.query = URI.encode_www_form(params)

    res = Net::HTTP.get_response(uri)
 
    return res.body
  end
  
  def send_cml_to_agent(cml)
  
    url = @url + 'cml'
    uri = URI.parse(url)

    params = {cml: cml, user: @user, password: @password, env: @env }

    res = Net::HTTP.post_form(uri, params)
 
    return res.body
  end
end

module RegressionTest
  def self.define(url, username, password, env, path, &block)
    definition_proxy = TradeProxy.new(url, username, password, env, path)
    definition_proxy.instance_eval(&block)
  end
end
