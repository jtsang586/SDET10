describe "e-commerce site testing" do
    
    before(:all) do 
        @practice_site = ECommerceSite.new
    end

    it "should click on second carousel" do
        @practice_site.click_carousel(2)
    end

    it "should click on buy now" do 
        @practice_site.click_buy
        sleep(1)
    end

    it "should click on add to cart button" do 
        @practice_site.click_add_to_cart
        sleep(2)
    end

end