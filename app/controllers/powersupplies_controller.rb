class PowersuppliesController < ApplicationController
  def index
    @products = Powersupply.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @products = Powersupply.all.page(params[:page]).per(25)
      when 'new'
        @products = Powersupply.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @products = Powersupply.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
    @categoryname = Category.where("name = 'Power Supplies'")
  end

  def show
    @product = Powersupply.find(params[:id])
    @categoryname = Category.where(id: @product.category_id)
                        .select("name")
  end
end
