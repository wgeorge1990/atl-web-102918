require 'pry'


loves = ['dogs', 'cocktails', 'smash brothers']
delicious = 'cookies'
age = 32

pikachu = {
  kind: 'electric',
  level: 3,
  caught: false,
  abilities: ['thunder jolt']
}

charmander = {
  kind: 'fire',
  levl: 5,
  caught: true,
  owner: 'cory'
}

def add(x, y)
  x + y
end

class Pokemon
  def initialize(name, kind, level)
    @name = name
    @kind = kind
    @level = level
  end

  def name
    @name
  end

  def level
    @level
  end

  def level=(new_level)
    @level = new_level
  end

  def level_up
    @level += 1
  end

  ## Fight: Returns true if I win.
  def fight(other_pokemon)
    self.level > other_pokemon.level
  end

  def run
    puts "#{@name} is running"
  end
end

brit = Pokemon.new('brit', 'instructor', -45)
rob = Pokemon.new('rob', 'dragonball z', 9001)

binding.pry
