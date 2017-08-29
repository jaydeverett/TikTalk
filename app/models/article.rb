class Article < ApplicationRecord
  has_many :comments

  validates :title, uniqueness: true
end
