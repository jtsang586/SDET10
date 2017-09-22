describe Multiples do

    before(:each) do
        @multiple = Multiples.new
    end

    it "should have a loop method" do 
        expect(@multiple).to respond_to(:loop)
    end

    it "should return 0 if not multiple of 3 or 5" do
        expect(@multiple.multiple_of_threes_and_fives(4)).to equal(0)
    end

    it "should return a number if multiple of 3 or 5" do
        expect(@multiple.multiple_of_threes_and_fives(5)).to equal(5)
    end

    it "should equal 23 in 9 numbers" do
        expect(@multiple.loop(1,9)).to equal(23)
    end

    it "should equal 14 in below 1000 numbers" do
        expect(@multiple.loop(1,999)).to equal(233168)
    end

end