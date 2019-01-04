class CategoriesController < ApplicationController
  def index
    @category = Category.find(params[:id])
  end
end
