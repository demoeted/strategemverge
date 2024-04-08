class OpticalDrivesController < ApplicationController
  def index
    @optical_drives = OpticalDrive.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @optical_drive = OpticalDrive.find(params[:id])
    @categoryname = Category.where(id: @optical_drive.category_id)
                        .select("name")
  end
end
