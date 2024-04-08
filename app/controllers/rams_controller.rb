class RamsController < ApplicationController
  def index
    @rams = Ram.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @ram = Ram.find(params[:id])
    @categoryname = Category.where(id: @ram.category_id)
                        .select("name")
  end
end
