class Badge
  attr_reader :title, :gym, :trainer

  @@badges = []

  def initialize(title, gym, trainer)
    @title = title
    @gym = gym
    @trainer = trainer
    @@badges << self
  end

  def self.all
    @@badges
  end

end
