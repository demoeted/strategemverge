class CaseFansController < ApplicationController
  def index
    @casefans = CaseFan.all.page(params[:page]).per(25)
  end

  def show
    @casefan = CaseFan.find(params[:id])
  end
end
