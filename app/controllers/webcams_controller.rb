class WebcamsController < ApplicationController
  def index
    @webcams = Webcam.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @webcam = Webcam.find(params[:id])
    @categoryname = Category.where(id: @webcam.category_id)
                        .select("name")
  end
end
