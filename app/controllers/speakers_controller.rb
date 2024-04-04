class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all.page(params[:page]).per(25)
  end

  def show
    @Speaker = Speaker.find(params[:id])
  end
end
