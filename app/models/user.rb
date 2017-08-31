class User < ApplicationRecord
  has_secure_password

  has_many :comments
  has_many :articles, :through => :comments
  has_many :trophies

  acts_as_voter

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
