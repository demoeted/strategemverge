class OpticalDrivesController < ApplicationController
  def index
    @optical_drives_controllers = OpticalDrive.all.page(params[:page]).per(25)
  end

  def show
    @optical_drives_controller = OpticalDrive.find(params[:id])
  end
end
