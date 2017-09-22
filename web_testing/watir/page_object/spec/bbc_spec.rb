
describe "bbc site stuff" do 
        
    before(:all) do 
        @chrome = BbcSite.new(:chrome)
    end    

    it "should access homepage" do
        @chrome.homepage.goto

        expect(@chrome.homepage.page_url).to eq('https://www.bbc.co.uk')
    end
end