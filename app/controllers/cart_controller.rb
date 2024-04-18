class CartController < ApplicationController
  def create
    id = params[:id].to_i
    category = params[:category].to_s
  end

  def destroy
  end
end
