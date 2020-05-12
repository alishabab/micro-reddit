class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :username, presence: true, length: { minimum: 6 }
  validates :email, presence: true, confirmation: { case_sensitive: false }, uniqueness: true
  validates :password, length: { in: 6..20 }, presence: true

  has_many :posts
  has_many :comments
end
