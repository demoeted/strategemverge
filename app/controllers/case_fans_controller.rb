class CaseFansController < ApplicationController
  def index
    @products = CaseFan.all.page(params[:page]).per(25)
    filter = params[:filter]
    @message = ""
    case filter
      when 'all'
        @products = CaseFan.all.page(params[:page]).per(25)
        @message = ""
      when 'new'
        @products = CaseFan.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
        @message = "Filtered: New"
      when 'recently updated'
        @products = CaseFan.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
        @message = "Filtered: Recently Updated"
    end
    @categories = Category.all
    @categoryname = Category.where("name = 'Case Fans'")
  end

  def show
    @product = CaseFan.find(params[:id])
    @categoryname = Category.where(id: @product.category_id)
                        .select("name")
  end
end
