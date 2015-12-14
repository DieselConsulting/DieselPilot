require_relative 'regression_test'
require_relative 'cml/fx_forward'

RegressionTest.define do

  trade FX_OPTION do
  
    action "NEW"
    
    save_trade
    
    action "VALIDATE"
    
    save_trade
  
  end

end
