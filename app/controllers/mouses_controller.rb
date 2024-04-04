class MousesController < ApplicationController
  def index
    @mouses = Mouse.all.page(params[:page]).per(9)
  end

  def show
    @mouse = Mouse.find(params[:id])
  end
end
