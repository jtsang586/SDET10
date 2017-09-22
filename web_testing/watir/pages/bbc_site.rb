require_relative 'bbc_homepage'
require_relative 'bbc_sign_in_page'

class Bbc_Site

    def initialize(browser)
        @browser = Watir::Browser.new browser 
    end
    # Create instance of homepage class
    def homepage
        Bbc_homepage.new(@browser)
    end

    def sign_in_page
        BbcSignInPage.new(@browser)
    end
end