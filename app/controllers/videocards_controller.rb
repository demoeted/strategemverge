class VideocardsController < ApplicationController
  def index
    @videocards = Videocard.all.page(params[:page]).per(25)
  end

  def show
    @videocard = Videocard.find(params[:id])
  end
end
