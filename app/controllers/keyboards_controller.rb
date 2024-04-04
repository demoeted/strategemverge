class KeyboardsController < ApplicationController
  def index
    @keyboards = Keyboard.all.page(params[:page]).per(25)
  end

  def show
    @keyboard = Keyboard.find(params[:id])
  end
end
