class Tag
  attr_reader :id
  attr_accessor :name

  def initialize(attributes={})
    @id = attributes['id']
    @name = attributes['name']
  end

  def self.all
    results = DB[:conn].execute("SELECT * FROM tags")
    results.map { |record| Tag.new(record) }
  end
end
