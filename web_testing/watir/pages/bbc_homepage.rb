class Bbc_homepage

    def initialize(browser)
        @browser = browser

        #page objects
        @homepage_url = 'https://www.bbc.co.uk/'
        @sign_in_link_id = "idcta-link"
    end

    def access_homepage
        @browser.goto(@homepage_url)
    end

    def sign_in_link
        @browser.link(id: @sign_in_link_id)
    end

    def click_sign_in_link
        sign_in_link.click
    end

end