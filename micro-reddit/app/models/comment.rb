# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :title, presence: true, length: { in: 3..40 }
  validates :body, presence: true
  validates :user_id, presence: true
  validates :post_id, presence: true
end
