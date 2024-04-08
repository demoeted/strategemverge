class VideocardsController < ApplicationController
  def index
    @videocards = Videocard.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @videocard = Videocard.find(params[:id])
    @categoryname = Category.where(id: @videocard.category_id)
                        .select("name")
  end
end
