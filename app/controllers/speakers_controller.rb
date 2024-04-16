class SpeakersController < ApplicationController
  def index
    @products = Speaker.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @products = Speaker.all.page(params[:page]).per(25)
      when 'new'
        @products = Speaker.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @products = Speaker.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
    @categoryname = Category.where("name = 'Speakers'")
  end

  def show
    @product = Speaker.find(params[:id])
    @categoryname = Category.where(id: @product.category_id)
                        .select("name")
  end
end
