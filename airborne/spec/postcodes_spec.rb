describe "postcodes.io" do 

    before(:all) do 
        @json = get 'http://api.postcodes.io/postcodes/se96rj'
    end

    it "should receive information" do
        puts @json
        expect_status(200)
    end

    it "check header content length" do
        expect_header(:content_length, '716')
    end

    it "check header content length" do
        expect_header(:content_type, 'application/json; charset=utf-8')
    end

    it "check header contains length" do
        expect_header_contains(:server, 'nginx')
    end

    it "checks json keys in results" do 
        expect_json_keys('result',[:postcode, :country, :admin_ward])
    end

    it "checks how many json keys are in results" do 
        expect_json_sizes(result: 23)
    end

    it "checks how many json keys there are" do 
        expect_json_sizes(2)
    end

    it "checks that coutnry results in England" do 
        expect_json('result', country: 'England')
    end

    it "checks that postcode in results is SE9 6RJ" do 
        expect_json('result', postcode: 'SE9 6RJ')
    end

    it "check that quality is an int" do 
        expect_json_types('result',quality: :integer)
    end

    it "check that longitude and latitude are floats" do 
        expect_json_types('result',latitude: :float, longitude: :float)
    end
end