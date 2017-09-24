require "support/controller_macros"
RSpec.configure do |config|
  config.extend ControllerMacros, :type => :controller
end
