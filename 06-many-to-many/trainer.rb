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

  def gyms
    # start by having an array to track the gyms
    result = []
    # loop over the badges that relate trainers to gyms
    Badge.all.each do |badge|
      # Check and see if I'm the trainer
      if badge.trainer == self
        ## add the badge's gym to the result
        result << badge.gym
      end
    end
    ## hand back the matching gyms
    result
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
