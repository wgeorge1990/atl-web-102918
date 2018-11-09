class PostTag < ActiveRecord::Base
  belongs_to :post
  belongs_to :tag


  # def tag
  #   Tag.find(self.tag_id)
  # end
end
