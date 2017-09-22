describe Fibonacci do 

    before(:each) do 
        @fibonacci = Fibonacci.new
    end

    it "should have a fibonacci method" do
        expect(@fibonacci).to respond_to(:fibonacci)
    end

    it "should have a even_number method" do
        expect(@fibonacci).to respond_to(:even_number)
    end

    it "should have total of 2 after initialize" do 
        expect(@fibonacci.total).to equal(2)
    end

    it "should have total of 44 in value less than 89" do 
        @fibonacci.fibonacci(1,2, 89)
        expect(@fibonacci.total).to equal(44)
    end 

    it "should have total of 4613732 in value less than 4 mil" do 
        @fibonacci.fibonacci(1,2, 4000000)
        expect(@fibonacci.total).to equal(4613732)
    end


end