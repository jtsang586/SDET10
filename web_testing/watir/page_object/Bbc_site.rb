require_relative 'pages/bbc_homepage'

class BbcSite

    def initialize(browser)
        @browser = Watir::Browser.new browser 
    end
    # Create instance of homepage class
    def homepage
        BbcHomepage.new(@browser)
    end

    def sign_in_page
        BbcSignInPage.new(@browser)
    end
end