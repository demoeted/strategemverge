class CaseFansController < ApplicationController
  def index
    @casefans = CaseFan.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @casefan = CaseFan.find(params[:id])
    @categoryname = Category.where(id: @casefan.category_id)
                        .select("name")
  end
end
