class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @speakers = Speaker.all.page(params[:page]).per(25)
      when 'new'
        @speakers = Speaker.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @speakers = Speaker.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @speaker = Speaker.find(params[:id])
    @categoryname = Category.where(id: @speaker.category_id)
                        .select("name")
  end
end
