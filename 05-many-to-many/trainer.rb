class Trainer
  attr_reader :wins, :losses, :trainers
  attr_accessor :pokemon

  @@trainers = []

  def initialize(name, pokemon=[], wins=0, losses=0)
    @name = name
    @wins = wins
    @losses = losses
    @pokemon = pokemon
    @@trainers << self
  end

  def self.all
    @@trainers
  end

  def catch_pokemon(caught)
    @pokemon << caught
  end
end
