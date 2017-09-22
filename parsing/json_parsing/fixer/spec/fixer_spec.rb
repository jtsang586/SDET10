describe Fixer do 

    before(:each) do 
        @fixer = Fixer.new
    end


    it "should have a base, date and rates key" do
        expect(@fixer.file.keys).to match_array(["base", "date", "rates"])
    end

    it "should be String value for base" do 
        expect(@fixer.file['base']).to be_a(String)
    end

    it "should be EUR value for base" do 
        expect(@fixer.file['base']).to eql("EUR")
    end

    it "should be length of 10 for date string" do 
        expect(@fixer.file['date'].length).to equal(10)
    end

    it "should have 31 amount of rate :keys" do
        expect(@fixer.file['rates'].keys.length).to equal(31)
    end

    it "should have only 3 characters for every rate :key " do 
        rate_keys= @fixer.file['rates'].keys
        rate_keys.each do |rates|
            expect(rates.length).to equal(3)
        end
    end

    it "should be a Float :value for all rates" do 
        rate_values= @fixer.file['rates'].values
        rate_values.each do |rates|
            expect(rates).to be_a(Float)
        end
    end

end