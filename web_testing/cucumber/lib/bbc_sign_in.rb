class BbcSignIn
    include Capybara::DSL

    SIGN_IN_URL = 'https://account.bbc.com/signin'

    def click_register
        click_link('Register now')
    end


end