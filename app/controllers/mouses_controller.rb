class MousesController < ApplicationController
  def index
    @mouses = Mouse.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @mouse = Mouse.find(params[:id])
    @categoryname = Category.where(id: @mouse.category_id)
                        .select("name")
  end
end
