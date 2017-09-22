class Pages::BbcSignInPage < SitePrism::Page

    set_url 'https://account.bbc.com/signin'
    set_url_matcher 'https://account.bbc.com/*'

    element :sign_in, 'button[id="submit-button"]'

    def fill_in_details

        fill_in('Email', with: 'kcorn1982@gmail.com') 
        fill_in('Password', with: 'TestPassw0rd')
    end

    def click_sign_in
        sign_in.click
    end

end