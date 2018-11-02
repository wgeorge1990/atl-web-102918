class Trainer
  attr_reader :name, :wins, :losses

  @@trainers = []

  def initialize(name, wins=0, losses=0)
    @name = name
    @wins = wins
    @losses = losses
    @@trainers << self
  end

  def self.all
    @@trainers
  end

  def pokemon
    result = []
    Pokemon.all.each do |pokemon|
      result << pokemon if pokemon.trainer == self
    end
    result
  end

  def catch_pokemon(caught)
    caught.trainer = self
  end

  def give(friend, pokemon)
    puts "#{self.name} is going to give #{pokemon.name} to #{friend.name}"
    # friend.catch_pokemon(pokemon)
    pokemon.trainer = friend
  end
end
