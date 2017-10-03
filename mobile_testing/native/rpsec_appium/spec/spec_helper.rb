require 'pry'
require 'appium_lib'

RSpec.configure do |config|
  config.formatter = :documentation
end

# $opts = {
#          caps: {
#            platformName: "Android",
#            deviceName: "emulator-5554",
#            app: "/Users/kierancornwall/Downloads/budgetwatch.apk"
#          },
#          appium_lib: {
#            wait_timeout: 30,
#            wait_interval: 1
#          }
#        }

def opts
        {
         caps: {
           platformName: "Android",
           deviceName: "emulator-5554",
           app: "/Users/Tech-A28/Downloads/budgetwatch.apk"
         },
         appium_lib: {
           wait_timeout: 30,
           wait_interval: 1
         }
       }
end
