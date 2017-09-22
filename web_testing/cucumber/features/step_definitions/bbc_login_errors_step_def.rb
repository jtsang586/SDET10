Given(/^I am on the BBC home page$/) do
    @bbc_site = BbcSite.new
    @bbc_site.bbc_homepage.go_to_homepage
end

And(/^I move to the sign in page$/) do
    @bbc_site.bbc_homepage.click_sign_in
end

When(/^I proceed to register$/) do
    @bbc_site.bbc_sign_in.click_register
end

And(/^I input my DOB$/) do
    @bbc_site.bbc_register_dob.fill_in_dob(3,11,1988)
    @bbc_site.bbc_register_dob.click_submit_button
end

And(/^I input the necessary details with the password details (.*)$/) do |password|
    @bbc_site.bbc_register_details.fill_in_email('joe_tsang26@hotmail.com')
    @bbc_site.bbc_register_details.fill_in_password(password)
    @bbc_site.bbc_register_details.click_register
    sleep(2)
end

Then(/^I receive the corresponding error (.*)$/) do |error|
  p error
  expect(find(:css, '.form-message__text').text).to eq(error)
end
