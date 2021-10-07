class Score < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :score, inclusion: 1..5
end
