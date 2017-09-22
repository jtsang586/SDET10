require 'faker'

# puts Faker::Name.name

# puts Faker::Lorem.sentences

# puts Faker::ChuckNorris.fact

character1 = Faker::LordOfTheRings.character

starwars_char = Faker::StarWars.character

puts "In a Galaxy far far away, #{character1} met up with #{Faker::HarryPotter.character} 
to discuss how he could smuggle #{Faker::Food.dish} into #{Faker::LordOfTheRings.location}. What they didn't know
was that #{Faker::LordOfTheRings.character} was selling #{Faker::Food.dish} in #{Faker::StarWars.planet} with the 
help of #{starwars_char}. When #{character1} found out he got on a #{Faker::StarWars.vehicle} with Chewie who said 
'#{Faker::StarWars.wookiee_sentence}' '#{Faker::StarWars.quote}' said #{character1}. 
Meanwhile there was a war going on in #{Faker::StarWars.planet} between #{Faker::StarWars.specie} and #{Faker::StarWars.specie} over #{Faker::Food.dish}."