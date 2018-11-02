class Trainer
  attr_reader :wins, :losses
  attr_accessor :pokemon

  @@trainers = []

  def initialize(name, pokemon=[], wins=0, losses=0)
    @name = name
    @wins = wins
    @losses = losses
    @pokemon = pokemon
    ## Set trainer on all the pokemon to me / self
    @@trainers << self
  end

  def self.all
    @@trainers
  end

  def catch_pokemon(caught)
    ## set trainer to self
    @pokemon << caught
  end

  def gift(friend, pokemon)
    ## set trainer to friend
    ## remove pokemon from my list of pokemon
    friend.catch_pokemon(pokemon)
  end

end
