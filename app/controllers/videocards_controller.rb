class VideocardsController < ApplicationController
  def index
    @products = Videocard.all.page(params[:page]).per(25)
    filter = params[:filter]
    @message = ""
    case filter
      when 'all'
        @products = Videocard.all.page(params[:page]).per(25)
        @message = ""
      when 'new'
        @products = Videocard.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
        @message = "Filtered: New"
      when 'recently updated'
        @products = Videocard.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
        @message = "Filtered: Recently Updated"
    end
    @categories = Category.all
    @categoryname = Category.where("name = 'Video Cards'")
  end

  def show
    @product = Videocard.find(params[:id])
    @categoryname = Category.where(id: @product.category_id)
                        .select("name")
  end
end
