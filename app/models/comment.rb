class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validate :check_if_user_already_commented

  acts_as_votable


def check_if_user_already_commented
  if Comment.where(user_id: user.id).where(article_id: self.article_id).present?
    self.errors.add(:user,  'You have already made a comment on this article!')
  end
end


def self.order_comments(comments_collection)
  comments_collection.sort_by{|comment| comment.get_likes.length}
end

end
