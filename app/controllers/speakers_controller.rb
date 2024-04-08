class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @speaker = Speaker.find(params[:id])
    @categoryname = Category.where(id: @speaker.category_id)
                        .select("name")
  end
end
