class RamsController < ApplicationController
  def index
    @Rams = Ram.all.page(params[:page]).per(25)
  end

  def show
    @Ram = Ram.find(params[:id])
  end
end
