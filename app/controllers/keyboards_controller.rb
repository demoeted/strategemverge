class KeyboardsController < ApplicationController
  def index
    @products = Keyboard.all.page(params[:page]).per(25)
    filter = params[:filter]
    @message = ""
    case filter
      when 'all'
        @products = Keyboard.all.page(params[:page]).per(25)
        @message = ""
      when 'new'
        @products = Keyboard.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
        @message = "Filtered: New"
      when 'recently updated'
        @products = Keyboard.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
        @message = "Filtered: Recently Updated"
    end
    @categories = Category.all
    @categoryname = Category.where("name = 'Keyboards'")
  end

  def show
    @product = Keyboard.find(params[:id])
    @categoryname = Category.where(id: @product.category_id)
                        .select("name")
  end
end
