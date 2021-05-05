class Review < ApplicationRecord
  belongs_to :salon
  has_many :review_points
  has_many :points, through: :review_points, dependent: :destroy
  accepts_nested_attributes_for :review_points

  enum sex: {male: 1, female: 2, other: 3}
  enum age: {s10: 1, s20: 2, s30: 3, s40: 4, s50: 5, s60: 6}

end
