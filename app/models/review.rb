class Review < ApplicationRecord
  belongs_to :salon
  has_many :review_points
  has_many :points, through: :review_points, dependent: :destroy
  accepts_nested_attributes_for :review_points

  enum sex: {male: 1, female: 2, other: 3}
  enum age: {s10: 1, s20: 2, s30: 3, s40: 4, s50: 5, s60: 6}

  # レビュー平均
  def avg_review_points
    scores = [0]
    self.review_points.each do |point|
      scores << point.score_before_type_cast
    end

    scores.sum / (scores.size + 1)
  end
  
end
