class KeyboardsController < ApplicationController
  def index
    @keyboards = Keyboard.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @keyboard = Keyboard.find(params[:id])
    @categoryname = Category.where(id: @keyboard.category_id)
                        .select("name")
  end
end
