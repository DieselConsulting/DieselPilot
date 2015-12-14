require_relative 'regression_test'
require_relative 'cml/fx_forward'

RegressionTest.define(ARGV[0], ARGV[1], ARGV[2], ARGV[3], ARGV[4]) do

  # Scenario 1 from test matrix.
  trade FX_FORWARD do
  
    action            "NEW"
    trade_party_le    "EMIRL2_EXTERN2"
    trade_party_book  "NV_MICRO"
    comment           "EMIR testing - Scenario 1"
    
    save_trade        :front_office_user
    
    action            "EXECUTE"
    
    save_trade        :back_office_user
    
    action            "AUTHORIZE"
    
    save_trade        :back_office_user
    
    action            "EMIR_EXIT"
    
    save_trade        :back_office_user
    
    export_messages_for_regression
  
  end

end
