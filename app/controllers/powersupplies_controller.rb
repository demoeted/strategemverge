class PowersuppliesController < ApplicationController
  def index
    @powersupplies = Powersupply.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @powersupply = Powersupply.find(params[:id])
    @categoryname = Category.where(id: @powersupply.category_id)
                        .select("name")
  end
end
