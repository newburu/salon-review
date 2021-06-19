class Salon < ApplicationRecord
  has_many :salon_categories
  has_many :categories, through: :salon_categories
  accepts_nested_attributes_for :salon_categories
  has_many :reviews

  # レビュー平均
  def avg_review_points
    scores = [0]
    self.reviews.each do |review|
      scores << review.avg_review_points
    end

    scores.sum / (scores.size + 1)
  end

end
