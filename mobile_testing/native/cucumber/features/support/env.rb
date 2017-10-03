require 'appium_lib'
require 'cucumber'
require_relative '../../lib/budget_app'

def opts
     {caps:
       {
       platformName: "Android",
       deviceName: "emulator-5554",
       app: "/Users/Tech-A28/Downloads/budgetwatch.apk"
       }
     }
end

# Usually it is Appium::Driver.new(opts, true) that creates a global driver variable but for some reason not liking it
# so global varialbe had to be created 'manually'
$driver = Appium::Driver.new(opts)

World(BudgetApp)
