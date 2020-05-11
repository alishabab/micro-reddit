class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :username, presence: true, length: { minimum: 6 }
  validates :email, presence: true, confirmation: { case_sensitive: false }, uniqueness: true
end
