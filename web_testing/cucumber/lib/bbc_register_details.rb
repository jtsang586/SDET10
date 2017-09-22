class BbcRegisterDetails
    include Capybara::DSL

    REGISTER_DETAILS_URL = 'https://account.bbc.com/register/details'

    def fill_in_email(email)
        fill_in('Email', with: email)
    end

    def fill_in_password(password)
        fill_in('Password', with: password)
    end

    def click_register
        click_button('Register')
    end

end