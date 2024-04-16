class OpticalDrivesController < ApplicationController
  def index
    @products = OpticalDrive.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @products = OpticalDrive.all.page(params[:page]).per(25)
      when 'new'
        @products = OpticalDrive.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @products = OpticalDrive.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
    @categoryname = Category.where("name = 'Optical Drives'")
  end

  def show
    @product = OpticalDrive.find(params[:id])
    @categoryname = Category.where(id: @product.category_id)
                        .select("name")
  end
end
