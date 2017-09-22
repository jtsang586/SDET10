
describe Calculator do 

    before(:each) do 
        @calc = Calculator.new
    end

    it "should have an add method" do
        expect(@calc).to respond_to(:add)
    end

    it "should have a minus method" do
        expect(@calc).to respond_to(:minus)
    end

    it "should have a divide method" do
        expect(@calc).to respond_to(:divide)
    end

    it "should have a multiply method" do
        expect(@calc).to respond_to(:multiply)
    end

    it "should add two numbers" do
        expect(@calc.add(2,2)).to equal(4) 
    end

    it "should subtract two numbers" do
        expect(@calc.minus(3,2)).to eq(1)
    end

    it "should divide two numbers" do
    end

    it "should multiply two numbers" do
    end

end