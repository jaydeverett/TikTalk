class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article

  acts_as_votable


  def self.order_comments(comments_collection)
    comments_collection.sort_by{|comment| comment.get_likes.length}
  end


end
