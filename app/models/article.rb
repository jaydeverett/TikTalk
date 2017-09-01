class Article < ApplicationRecord
  has_many :comments
  has_one :result

  validates :title, uniqueness: true


  def winner
    if self.archived == true
      return Comment.order_comments(self.comments).last.user
    end
  end

  def time_remaining
    7200 - ((DateTime.now.utc - self.created_at).to_i)
  end
end
