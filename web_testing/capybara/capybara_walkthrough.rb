require 'capybara'

class ECommerceSite

    def initialize
        Capybara.register_driver :chrome do |app|
            Capybara::Selenium::Driver.new(app, :browser => :chrome)
        end

        @chrome_driver = Capybara::Session.new(:chrome)

        @site_url = @chrome_driver.visit 'http://store.demoqa.com/'
        @wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    end

    def click_carousel(num)
        @chrome_driver.find(:xpath, '//*[@id="slide_menu"]/a[2]').click
        sleep(2)
    end

    def click_buy
        @chrome_driver.find(:xpath, '//*[@id="slides"]/div[1]/div[3]/div/a/span').click
    end

    def click_add_to_cart
        @chrome_driver.find('.wpsc_buy_button').click
    end

end

# describe "checkout and pay for an item" do 

#     before(:all) do
#         @chrome = Capybara::Session.new(:chrome)
#     end

#     it "should access the " do
#         @chrome.visit 'http://store.demoqa.com/'
#     end

#     it "should allow me to select a carousel object" do
#         @chrome.all(:xpath, '//*[@id="slide_menu"]/a')[1].click
#     end

#     it "should allow me to click the buy now button for iphone" do
#         @chrome.find('span', text: 'Buy Now').click
#     end

#     it "should allow me to click the add to cart button for iphone" do
#         @chrome.find('.input-button-buy').click
#     end

#     it "should allow me to click go to checkout" do
#         @chrome.find('.go_to_checkout').click
#     end

#     it "should allow me to continue with my payment" do
#         @chrome.find('.step2').click
#     end

# end