class Pokemon
  attr_reader :name
  attr_accessor :level, :trainer

  @@pokemon = []

  def initialize(name, kind, level)
    @name = name
    @kind = kind
    @level = level
    @trainer = nil
    @@pokemon << self
  end

  def self.all
    @@pokemon
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
