require 'java'

java_import "difflib.Main"

patch = Main.getDiff ARGV[0], ARGV[1]

patch.each do |line|
  puts line
end
