class VideocardsController < ApplicationController
  def index
    @videocards = Videocard.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @videocards = Videocard.all.page(params[:page]).per(25)
      when 'new'
        @videocards = Videocard.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @videocards = Videocard.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @videocard = Videocard.find(params[:id])
    @categoryname = Category.where(id: @videocard.category_id)
                        .select("name")
  end
end
