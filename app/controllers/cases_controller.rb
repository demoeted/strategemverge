class CasesController < ApplicationController
  def index
    @cases = Case.all.page(params[:page]).per(9)
  end

  def show
    @cases = Case.find(params[:id])
  end
end
