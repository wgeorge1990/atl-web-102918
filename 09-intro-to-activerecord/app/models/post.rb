class Post < ActiveRecord::Base

  def share(friend)
    puts "Hey #{friend}, check out my new post: #{self.url}"
  end

  def word_count
    self.content.split(" ").count
  end

end
