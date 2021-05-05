class ReviewPoint < ApplicationRecord
  belongs_to :review
  belongs_to :point

  enum score: {one: 1, two: 2, three: 3 , four: 4, five: 5}
end
