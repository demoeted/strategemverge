class SearchController < ApplicationController
  def index
    wildcard_search = "%#{params[:keywords]}%"
    category = params[:category]
    case category
      when 'all'
        @results = all_models(wildcard_search).page(params[:page]).per(25)
      when 'Case Fans'
        @results = CaseFan.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
      when 'CPUs'
        @results = Cpu.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
      when 'Keyboards'
        @results = Keyboard.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
      when 'Memory'
        @results = Ram.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
      when 'Monitors'
        @results = ComputerMonitor.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
      when 'Motherboards'
        @results = Motherboard.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
      when 'Mouses'
        @results = Mouse.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
      when 'Optical Drives'
        @results = OpticalDrive.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
      when 'Power Supplies'
        @results = Powersupply.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
      when 'Speakers'
        @results = Speaker.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
      when 'Thermal Paste'
        @results = ThermalPaste.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
      when 'Video Cards'
        @results = Videocard.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
      when 'Webcams'
        @results = Webcam.where("name LIKE ?", wildcard_search).page(params[:page]).per(25)
    end

    @categories = Category.all

  end

  private

  def all_models(wildcard_search)
    results = []
    [CaseFan, Case, Cpu, Keyboard, Ram, ComputerMonitor, Motherboard, Mouse, OpticalDrive, Powersupply, Speaker, ThermalPaste, Videocard, Webcam].each do |w|
      results.concat(w.where("name LIKE ?", wildcard_search))
    end
    Kaminari.paginate_array(results)
  end
end
