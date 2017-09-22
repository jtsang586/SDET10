# "Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" 
# instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz"

class FizzBuzz

    (1..100).each do |i|
        if i % 3 == 0 && i % 5 == 0
            puts "fizzbuzz"
        elsif i % 3 == 0
            puts "fizz"
        elsif i % 5 == 0
            puts "buzz"
        else 
            puts i  
        end
    end

end