class CasesController < ApplicationController
  def index
    @products = Case.all.page(params[:page]).per(25)
    filter = params[:filter]
    @message = ""
    case filter
      when 'all'
        @products = Case.all.page(params[:page]).per(25)
        @message = ""
      when 'new'
        @products = Case.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
        @message = "Filtered: New"
      when 'recently updated'
        @products = Case.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
        @message = "Filtered: Recently Updated"
    end
    @categories = Category.all
    @categoryname = Category.where("name = 'Cases'")
  end

  def show
    @product = Case.find(params[:id])
    @categoryname = Category.where(id: @product.category_id)
                        .select("name")
  end
end
