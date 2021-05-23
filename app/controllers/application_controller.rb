class ApplicationController < ActionController::Base
  before_action :set_sub_menu

  private

  def set_sub_menu
    @categories = Category.all
  end

end
