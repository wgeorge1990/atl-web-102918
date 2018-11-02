class Pokemon
  attr_reader :name, :level

  def initialize(name, kind, level)
    @name = name
    @kind = kind
    @level = level
  end

  def self.describe
    puts "A Pokemon is a 'pocket monster' that can be used to battle other pocket monsters. They have a name, kind, and level."
  end

  def level_up
    @level += 1
  end

  def fight(enemy)
    self.level > enemy.level
  end
end
