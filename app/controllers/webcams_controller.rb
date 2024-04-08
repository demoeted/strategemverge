class WebcamsController < ApplicationController
  def index
    @webcams = Webcam.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @webcams = Webcam.all.page(params[:page]).per(25)
      when 'new'
        @webcams = Webcam.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @webcams = Webcam.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @webcam = Webcam.find(params[:id])
    @categoryname = Category.where(id: @webcam.category_id)
                        .select("name")
  end
end
