class Multiples

    def loop(min_range_int, max_range_int)
        total = 0

        (min_range_int..max_range_int).each do |i|
            total += multiple_of_threes_and_fives(i)
        end
        
        total
    end

    def multiple_of_threes_and_fives(num)
        if num % 3 == 0 || num % 5 == 0
            num
        else
            return 0
        end
    end
end