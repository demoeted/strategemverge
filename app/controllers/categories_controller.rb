class CategoriesController < ApplicationController
  def index
    @categories = Category.all.page(params[:page]).per(25)
  end

  def show
    @category = Category.find(params[:id])
  end
end
