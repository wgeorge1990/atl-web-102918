class PostTag
  attr_accessor :post, :tag

  @@post_tags = []

  def initialize(attributes={})
    @post = attributes['post']
    @tag = attributes['tag']
    @@post_tags << self
  end
end
