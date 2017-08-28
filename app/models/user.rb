class User < ApplicationRecord
  has_secure_password

  has_many :comments
  has_many :articles, :through => :comments
  has_many :trophies
end
