class Article < ApplicationRecord
  has_many :comments
  has_one :result

  validates :title, uniqueness: true


  def winner
    if self.archived == true
      return Comment.order_comments(self.comments).last.user
    end
  end
end
