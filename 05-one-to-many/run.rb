require 'pry'
require_relative './trainer'
require_relative './pokemon'

brit = Pokemon.new('brit', 'instructor', 30)
rob = Pokemon.new('rob', 'dragonball z', 9001)
tammy = Pokemon.new('tammy', 'legendary', 10001)

ronny = Trainer.new('ronny')
garry = Trainer.new('garry')

ronny.catch_pokemon(brit)
ronny.catch_pokemon(rob)
garry.catch_pokemon(tammy)

puts "Ronny's pokemon are: #{ronny.pokemon}\n\n"
puts "Garry's pokemon are: #{garry.pokemon}"

ronny.give(garry, brit)

puts "Ronny's pokemon are: #{ronny.pokemon}\n\n"
puts "Garry's pokemon are: #{garry.pokemon}"

binding.pry
