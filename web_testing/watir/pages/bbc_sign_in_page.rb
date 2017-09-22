require 'faker'

class BbcSignInPage

    def initialize(browser)
        @browser = browser
        @sign_in_url = 'https://account.bbc.com/signin'

        @username_id = 'username-input'
        @password_id = 'password-input'
        @sign_in_button_id = 'submit-button'
        @sign_in_error_id = 'form-error-username'

        @random_email = Faker::Internet.email
        @random_password = Faker::DragonBall.character
    end

    def access_sign_in_page
        @browser.goto(@sign_in_url)
    end

    def username_field
        @browser.text_field(id: @username_id)
    end

    def password_field
        @browser.text_field(id: @password_id)
    end

    def sign_in_button
        @browser.button(id: @sign_in_button_id)
    end

    def sign_in_error
        @browser.span(id: @sign_in_error_id)
    end

    def enter_username
        username_field.set(@random_email)
    end

    def enter_password
        password_field.set(@random_password)
    end

    def click_sign_in_button
        sign_in_button.click
    end

end