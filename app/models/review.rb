class Review < ApplicationRecord
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5).to_a }, numericality: { only_integer: true }
  belongs_to :restaurant
end
