
describe "bbc login failures" do

    before(:all) do 
        @bbc_site = Bbc_Site.new(:chrome)
    end

    it "should not accept an incorrect username" do 
        @bbc_site.homepage.access_homepage
        @bbc_site.homepage.sign_in_link.exists?
    end

    it "should click on the sign in link" do 
        @bbc_site.homepage.click_sign_in_link
    end

    it "should enter username/email" do 
        @bbc_site.sign_in_page.enter_username
    end

    it "should enter password" do 
        @bbc_site.sign_in_page.enter_password
    end

    it "should click on the sign in button" do 
        @bbc_site.sign_in_page.click_sign_in_button
    end

    it "display error message with unrecognised email/password" do 
        @bbc_site.sign_in_page.sign_in_error.exists?
    end

end