class RamsController < ApplicationController
  def index
    @rams = Ram.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @rams = Ram.all.page(params[:page]).per(25)
      when 'new'
        @rams = Ram.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @rams = Ram.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @ram = Ram.find(params[:id])
    @categoryname = Category.where(id: @ram.category_id)
                        .select("name")
  end
end
