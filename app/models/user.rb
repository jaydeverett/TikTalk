class User < ApplicationRecord
  has_secure_password

  has_many :comments
  has_many :articles, :through => :comments

  acts_as_voter

  validates :username, uniqueness: true
  #validate :user_can_only_edit_own_profile

  def user_can_only_edit_own_profile
    if current_user.id != self.id
      errors.add(message: "You cannot edit another person's profile!")
  end
  end

  def my_wins
    wins = 0
    self.articles.each do |article|
      if article.winner == self
        wins += 1
      end
  end
  wins
end
end
