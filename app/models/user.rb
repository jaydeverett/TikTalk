class User < ApplicationRecord
  has_secure_password

  has_many :comments
  has_many :articles, :through => :comments

  acts_as_voter

  validates :username, uniqueness: true

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
