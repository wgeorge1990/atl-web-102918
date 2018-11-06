require 'pry'
require_relative './trainer'
require_relative './pokemon'
require_relative './gym'
require_relative './badge'

brit = Pokemon.new('brit', 'instructor', 30)
rob = Pokemon.new('rob', 'dragonball z', 9001)
tammy = Pokemon.new('tammy', 'legendary', 10001)

ronny = Trainer.new('ronny')
garry = Trainer.new('garry')

violet = Gym.new('Falkner', 'Johto', 'water')
celadon = Gym.new('Erika', 'Celadon', 'fire')
pewter = Gym.new('Brock', 'Pewter City', 'earth')

badge1 = Badge.new('Water Champion', violet, ronny)
badge2 = Badge.new('Water Champion', violet, garry)
badge3 = Badge.new('Firefighter', celadon, ronny)
badge4 = Badge.new('Firefighter', celadon, garry)
badge5 = Badge.new('Grass Badge', pewter, ronny)

ronny.catch_pokemon(brit)
ronny.catch_pokemon(rob)
garry.catch_pokemon(tammy)

puts "Ronny's pokemon are: #{ronny.pokemon}\n\n"
puts "Garry's pokemon are: #{garry.pokemon}"

ronny.give(garry, brit)

puts "Ronny's pokemon are: #{ronny.pokemon}\n\n"
puts "Garry's pokemon are: #{garry.pokemon}"

# should print out "violet gym has been beaten by: ronny, garry"
puts "#{violet.location} gym has been beaten by: #{violet.victors}"

# should print out "ronny has beaten the gyms: johto, celadon, pewter"
puts "#{ronny.name} has beaten the gyms: #{ronny.gyms}"
