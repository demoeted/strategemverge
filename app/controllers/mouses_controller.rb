class MousesController < ApplicationController
  def index
    @mouses = Mouse.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @mouses = Mouse.all.page(params[:page]).per(25)
      when 'new'
        @mouses = Mouse.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @mouses = Mouse.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @mouse = Mouse.find(params[:id])
    @categoryname = Category.where(id: @mouse.category_id)
                        .select("name")
  end
end
