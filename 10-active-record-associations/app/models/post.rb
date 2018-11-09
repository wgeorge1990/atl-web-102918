class Post < ActiveRecord::Base
  has_many :post_tags
  has_many :tags, through: :post_tags

  def share(friend)
    puts "Hey #{friend}, check out my new post: #{self.url}"
  end

  def word_count
    self.content.split(" ").count
  end

end
