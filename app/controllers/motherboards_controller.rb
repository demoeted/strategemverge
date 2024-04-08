class MotherboardsController < ApplicationController
  def index
    @motherboards = Motherboard.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @motherboard = Motherboard.find(params[:id])
    @categoryname = Category.where(id: @motherboard.category_id)
                        .select("name")
  end
end
