class CasesController < ApplicationController
  def index
    @cases = Case.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @cases = Case.all.page(params[:page]).per(25)
      when 'new'
        @cases = Case.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @cases = Case.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @case = Case.find(params[:id])
    @categoryname = Category.where(id: @case.category_id)
                        .select("name")
  end
end
