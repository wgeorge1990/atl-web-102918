require 'pry'
require_relative './pokemon'
require_relative './trainer'

brit = Pokemon.new('brit', 'instructor', 30)
rob = Pokemon.new('rob', 'dragonball z', 9001)
tammy = Pokemon.new('tammy', 'legendary', 10001)

ronny = Trainer.new('ronny', [brit, rob])
garry = Trainer.new('garry', [tammy])

binding.pry
