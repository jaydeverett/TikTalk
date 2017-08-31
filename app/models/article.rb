class Article < ApplicationRecord
  has_many :comments
  has_one :result

  validates :title, uniqueness: true
end
