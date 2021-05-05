class Review < ApplicationRecord
  belongs_to :salon
  has_many :review_points
  has_many :points, through: :review_points, dependent: :destroy
  accepts_nested_attributes_for :review_points
end
