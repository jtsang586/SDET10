require_relative 'living_organism'

class Animal < LivingOrganism

    def self.traits
        puts 'animals can breathe eat and pro-create'
    end

    def breathe
        puts 'inhale and exhale'
    end

    def pro_create
        puts 'where the magic happens'
    end

    def eat
        puts 'nom nom nom'
    end

    def speak
        puts 'hello!'
    end

end

puts Animal.traits

cheetah = Animal.new

# cheetah.alive