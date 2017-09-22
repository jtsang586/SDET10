require 'selenium-webdriver'

# http://toolsqa.com/automation-practice-form/

class QAForm

    def initialize
        Selenium::WebDriver::Chrome.driver_path = '/usr/local/bin/chromedriver'
        @chrome_driver = Selenium::WebDriver.for :chrome

        #page objects
        @practice_from_url = 'http://toolsqa.com/automation-practice-form/'
        @wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    end

    def access_practice_form
        @chrome_driver.get @practice_from_url
    end

    def add_first_name(first_name)
        @wait.until{@chrome_driver.find_element(:name, 'firstname').displayed?}
        @chrome_driver.find_element(:name, 'firstname').send_keys(first_name)
    end

    def add_last_name(last_name)
        @wait.until{@chrome_driver.find_element(:name, 'lastname').displayed?}
        @chrome_driver.find_element(:name, 'lastname').send_keys(last_name)
    end

    def select_sex(sex)

        if sex == 'male' 
            @wait.until{@chrome_driver.find_element(:id, 'sex-0').displayed?}
            @chrome_driver.find_element(:id, 'sex-0').click
        else 
            @wait.until{@chrome_driver.find_element(:id, 'sex-1').displayed?}
            @chrome_driver.find_element(:id, 'sex-1').click
        end
    end

    def add_date(date)
        @chrome_driver.find_element(:id, 'datepicker').send_keys(date)
    end

    def select_years_experience(years)
        if years >= 1 && years <= 7
            experience = years - 1
            @chrome_driver.find_element(:id, 'exp-'+experience.to_s).click
        end
    end

    def select_profession(profession)
        if profession == 'manual'
            @chrome_driver.find_element(:id, 'profession-0').click
        elsif profession == 'automation'
            @chrome_driver.find_element(:id, 'profession-1').click
        end
    end

    def select_profile_pic 
        @chrome_driver.find_element(:id, 'photo').click
    end

    def select_automation_tool(tool)
        if tool == 'qtp'
            @chrome_driver.find_element(:id, 'tool-0').click
        elsif tool == 'selenium IDE'
            @chrome_driver.find_element(:id, 'tool-1').click
        elsif tool == 'selenium webdriver'
            @chrome_driver.find_element(:id, 'tool-2').click
        end
    end

    def select_continent(continent)
        continents = @chrome_driver.find_element(:name, 'continents')
        continents.select_by_visible_text(continent)
    end
end

# practice_form = QAForm.new


# practice_form.access_practice_form
# practice_form.add_first_name('dave')
# practice_form.add_last_name('smith')