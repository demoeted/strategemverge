class PowersuppliesController < ApplicationController
  def index
    @powersupplies = Powersupply.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @powersupplies = Powersupply.all.page(params[:page]).per(25)
      when 'new'
        @powersupplies = Powersupply.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @powersupplies = Powersupply.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @powersupply = Powersupply.find(params[:id])
    @categoryname = Category.where(id: @powersupply.category_id)
                        .select("name")
  end
end
