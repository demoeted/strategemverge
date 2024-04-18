class WebcamsController < ApplicationController
  def index
    @products = Webcam.all.page(params[:page]).per(25)
    filter = params[:filter]
    @message = ""
    case filter
      when 'all'
        @products = Webcam.all.page(params[:page]).per(25)
        @message = ""
      when 'new'
        @products = Webcam.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
        @message = ""
      when 'recently updated'
        @products = Webcam.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
        @message = "Filtered: Recently Updated"
    end
    @categories = Category.all
    @categoryname = Category.where("name = 'Webcams'")
  end

  def show
    @product = Webcam.find(params[:id])
    @categoryname = Category.where(id: @product.category_id)
                        .select("name")
  end
end
