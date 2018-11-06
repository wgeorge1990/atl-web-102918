### Using a class method
## RestClient.get
## JSON.parse

## Defining class methods
## def self.my_class_method

class Pokemon
  def initialize(name, kind, level)
    @name = name
    @kind = kind
    @level = level
  end

  def self.describe
    puts "A Pokemon is a 'pocket monster' that can be used to battle other pocket monsters. They have a name, kind, and level."
  end

  def name
    @name
  end

  def level
    @level
  end

  def level=(new_level)
    if new_level > 50
      @level = 50
    else
      @level = new_level
    end
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
