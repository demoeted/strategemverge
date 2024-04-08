class CaseFansController < ApplicationController
  def index
    @casefans = CaseFan.all.page(params[:page]).per(25)
    @message = ""
    filter = params[:filter]
    case filter
      when 'all'
        @casefans = CaseFan.all.page(params[:page]).per(25)
        @message = ""
      when 'new'
        @casefans = CaseFan.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
        @message = "Filtered: New"
      when 'recently updated'
        @casefans = CaseFan.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
        @message = "Filtered: Recently Added"
    end
    @categories = Category.all
  end

  def show
    @casefan = CaseFan.find(params[:id])
    @categoryname = Category.where(id: @casefan.category_id)
                        .select("name")
  end
end
