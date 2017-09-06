class Article < ApplicationRecord
  has_many :comments
  has_one :result

  validates :title, uniqueness: true


  def winner
    if self.archived == true
      unless Comment.order_comments(self.comments).last
        return nil
      else
        return Comment.order_comments(self.comments).last.user
      end
    end
  end

  def time_remaining
    sec = 7200 - ((DateTime.now.utc - self.created_at).to_i)
    Time.at(sec).utc.strftime("%H:%M:%S")
  end
end
