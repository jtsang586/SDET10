var expect = chai.expect;

describe('addTwoNumbers', function(){
    it('should add two numbers together', function(){
        var number1 = 1;
        var number2 = 2;

        expect(addTwoNumbers(number1, number2)).to.equal(3);
    })
})


describe('fizzbuzz', function(){

    beforeEach(function(done) {
        var arraySize = 15;
        fizzBuzzArray = fizzBuzzGenerator(arraySize);
        done();
    })

    it('should print fizz', function(){
        expect(fizz()).to.equal('fizz');
    })

    it('should print buzz', function(){
        expect(buzz()).to.equal('buzz');
    })

    it('should print fizzbuzz', function(){
        expect(fizzbuzz()).to.equal('fizzbuzz');
    })

    it('should be an array ', function(){
        expect(fizzBuzzArray).to.be.an('array');
    })

    it('should be a integer at 2nd element', function(){
        expect(fizzBuzzArray[2]).to.be.a('number');
    })

    it('should have array size of 16', function(){
        expect(fizzBuzzArray.length).to.equal(16);
    })

    it('should be equal to 4 at 4th element', function(){
        expect(fizzBuzzArray[4]).to.be.equal(4);
    })

    it('should print fizz at 3rd array element', function(){
        expect(fizzBuzzArray[3]).to.equal('fizz');
    })

    it('should print buzz at 5th array element', function(){
        expect(fizzBuzzArray[5]).to.equal('buzz');
    })

    it('should print fizzbuzz at 15th array element', function(){
        expect(fizzBuzzArray[15]).to.equal('fizzbuzz');
    })
})