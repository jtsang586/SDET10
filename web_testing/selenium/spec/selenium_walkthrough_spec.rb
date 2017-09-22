describe 'Selenium_walkthrough' do 

    before(:all) do 
        @practice_form = QAForm.new

        @practice_form.access_practice_form

        @chrome_driver = Selenium::WebDriver.for :chrome
    end

    it "should accept a firstname in the firstname textfield" do 
        @practice_form.add_first_name('dave')
        # puts expect(@chrome_driver.get_element(:name, 'firstname').text)
    end

    it "should accept a lastname in the lastname textfield" do 
        @practice_form.add_first_name('smith')
    end

    it "should click on male/female when specified in method" do 
        @practice_form.select_sex('female')
    end

    it "should select number of years experience from 1 - 7 " do 
        @practice_form.select_years_experience(1)
    end

    it "should accept a string of date in date field" do 
        @practice_form.add_date("18/09/2017")
    end

    it "should click on manual or automation tester" do 
        @practice_form.select_profession("manual")
    end

    it "should click on 'select profile pic' " do 
        @practice_form.select_profile_pic
    end

    it "should select an automation tool" do 
        @practice_form.select_automation_tool("qtp")
    end

    it "should select continent from drop down list" do
        @practice_form.select_continent("Europe")
    end

end