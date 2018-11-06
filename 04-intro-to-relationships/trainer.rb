PI = 3.14159

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

  def add_pokemon(caught_pokemon)
    @pokemon << caught_pokemon
  end

  # def pokemon=(new_pokemon)
  #   @pokemon = new_pokemon
  # end

  # def wins
  #   @wins
  # end

  # def losses
  #   @losses
  # end

  def greet
    puts "Hi, I'm a pokemon trainer."
  end
end
