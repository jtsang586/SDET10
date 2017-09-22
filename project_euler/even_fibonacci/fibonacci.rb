class Fibonacci

    attr_accessor :total

    def initialize
        @total = 2
    end

    def fibonacci(num1, num2, limit)

        num1 += num2

        if num1 <= limit
            even_number(num1)
            fibonacci(num2, num1, limit)
        end

    end

    def even_number(num)

        if num % 2 == 0
            @total += num
        end
        
    end

end

# fib = Fibonacci.new

# fib.fibonacci(1,2, 89)