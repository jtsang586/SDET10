describe Postcodes::SinglePostcode do 

    before(:each) do 
        @random_postcode = Postcodes::PostcodeGenerator.new
        @random_postcode = @random_postcode.Generate[0].gsub(' ', '')  

        @postcode = Postcodes::SinglePostcode.new(@random_postcode)
    end

    it "should have a string length of 299 in the header" do 
        expect(@postcode.get_single_postcode_headers.length).to equal(299)
    end

    it "should have status of 200" do 
        expect(@postcode.get_single_postcode_body['status']).to equal(200)
    end

    it "should have 23 keys inside results" do 
        expect(@postcode.get_single_postcode_body['result'].keys.length).to equal(23)
    end

    it "should have country of either England, Scotland or Wales" do
        expect(@postcode.get_single_postcode_body['result']['country']).to include("England" || "Scotland" || "Wales") 
    end    

    it "should have the same postcode as the one in the instance" do 
        expect(@postcode.get_single_postcode_body['result']['postcode'].gsub(' ', '')).to eql(@random_postcode)
    end


end

describe Postcodes::MultiplePostcodes do 

    before(:each) do 
        @multi_postcodes = Postcodes::MultiplePostcodes.new(["OX49 5NU", "M32 0JG", "NE30 1DP"])
    end

    it "should have status of 200" do 
        expect(@multi_postcodes.get_multiple_postcodes_body['status']).to equal(200)
    end



end
