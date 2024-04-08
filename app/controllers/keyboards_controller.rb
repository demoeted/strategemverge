class KeyboardsController < ApplicationController
  def index
    @keyboards = Keyboard.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @keyboards = Keyboard.all.page(params[:page]).per(25)
      when 'new'
        @keyboards = Keyboard.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @keyboards = Keyboard.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @keyboard = Keyboard.find(params[:id])
    @categoryname = Category.where(id: @keyboard.category_id)
                        .select("name")
  end
end
