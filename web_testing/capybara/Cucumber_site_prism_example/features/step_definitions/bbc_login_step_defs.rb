Given(/^I can access the bbc home page$/) do
	@bbcwebsite = BbcSite.new
	@bbcwebsite.bbc_homepage.load
    @bbc.bbc_homepage.displayed?
end

And(/^I am able to click sign$/) do
	@bbcwebsite.bbc_homepage.click_sign_in_link

	# click_link('idcta-link')
end

When(/^I enter valid login details$/) do
	# @bbcwebsite.bbc_sign_in.fill_in_details
  # fill_in('Email', with: 'kcorn1982@gmail.com')
  # fill_in('Password', with: 'TestPassw0rd')
end

And(/^I click sign in$/) do
	# @bbcwebsite.bbc_sign_in.click_sign_in
  # click_button('submit-button')
end

Then(/^I have been signed in$/) do
	pending
	# expect(find_by_id('idcta-username').text).to eq 'Your account'
	# expect(find(:xpath, '//*[@id="orb-modules"]/div[2]/section[2]/div/div')).not_to exist
end

When(/^I enter invalid login details$/) do
	pending
  # fill_in('Email', with: 'kcorn1982@gmail.com')
  # fill_in('Password', with: '123')
end

Then(/^i receive an error$/) do
	pending
	# expect(find(:css, '.form-message__text').text).to eq "Sorry, that password is too short. It needs to be six characters or more."
end