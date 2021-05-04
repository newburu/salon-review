class ReviewPoint < ApplicationRecord
  belongs_to :review
  belongs_to :point
end
