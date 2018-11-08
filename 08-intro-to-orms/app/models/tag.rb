class Tag
  attr_accessor :name

  @@tags = []

  def initialize(attributes={})
    @name = attributes['name']
    @@tags << self
  end
end
