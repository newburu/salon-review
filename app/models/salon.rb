class Salon < ApplicationRecord
  has_many :salon_categories
  has_many :categories, through: :salon_categories
  accepts_nested_attributes_for :salon_categories
end
