class WebcamsController < ApplicationController
  def index
    @webcams = Webcam.all.page(params[:page]).per(25)
  end

  def show
    @webcam = Webcam.find(params[:id])
  end
end
