class OpticalDrivesController < ApplicationController
  def index
    @optical_drives = OpticalDrive.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @optical_drives = OpticalDrive.all.page(params[:page]).per(25)
      when 'new'
        @optical_drives = OpticalDrive.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @optical_drives = OpticalDrive.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @optical_drive = OpticalDrive.find(params[:id])
    @categoryname = Category.where(id: @optical_drive.category_id)
                        .select("name")
  end
end
