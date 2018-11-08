class Post
  attr_reader :url
  attr_accessor :title, :date, :format, :content

  @@posts = []

  def initialize(attributes={})
    @title = attributes['title']
    @date = attributes['date']
    @format = attributes['format']
    @content = attributes['content']
    @url = "https://blog.kingcons.io/posts/#{title}"
    @@posts << self
  end

  def share(friend)
    puts "Hey #{friend}, check out my new post: #{self.url}"
  end

  def word_count
    self.content.split(" ").count
  end
end
