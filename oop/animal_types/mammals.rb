module Mammals

    def self.common_traits
        puts 'mammals have lungs, all express milk, have vertebrae, and are warm blooded'
    end

    class Quardraped
        def self.four_legs
            puts "hey I've got four legs"
        end
    end

    class Biped
        def self.two_legs
            puts "hey I've got two legs"
        end
    end
end

# Mammals.common_traits

# fox = Mammals::Biped.new

# fox.two_legs

