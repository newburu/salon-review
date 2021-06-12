class Category < ApplicationRecord
  has_many :salon_categories
  has_many :salons, through: :salon_categories

  # カテゴリに属するサロンに投稿されたレビュー数
  def reviews_count
    cnt = 0
    self.salons.each do |salon|
      cnt += salon.reviews.count
    end

    cnt
  end
end
