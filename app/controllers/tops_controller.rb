class TopsController < ApplicationController

  def index
    condition = params[:q] || {}
    @reviews = Review.ransack(condition).result
    @salons = Salon.ransack(condition).result
    @categories = Category.ransack(condition).result
  end

end
