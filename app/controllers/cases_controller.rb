class CasesController < ApplicationController
  def index
    @cases = Case.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @case = Case.find(params[:id])
    @categoryname = Category.where(id: @case.category_id)
                        .select("name")
  end
end
