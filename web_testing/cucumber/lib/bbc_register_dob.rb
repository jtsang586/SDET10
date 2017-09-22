class BbcRegisterdob
    include Capybara::DSL

    SIGN_IN_URL = 'https://account.bbc.com/signin'

    def fill_in_dob(date,month,year)
        fill_in('day-input', with: date)
        fill_in('month-input', with: month)
        fill_in('year-input', with: year)
    end

    def click_submit_button
        click_button('submit-button')
    end
end