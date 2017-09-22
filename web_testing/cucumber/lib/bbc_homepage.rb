class BbcHomepage 
    include Capybara::DSL

    HOME_PAGE_URL = 'https://bbc.co.uk/'

    def go_to_homepage
        visit(HOME_PAGE_URL)
    end

    def click_sign_in
        click_link('idcta-link')
    end

end