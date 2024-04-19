class CartController < ApplicationController
  def create
  #   logger.debug("Adding #{params[:quantity]} #{params[:category]} ID no. #{params[:id]}")
    id = params[:id].to_i
    category = params[:category]
    quantity = params[:quantity].to_i

    case category
    when "Case Fans"
      product = CaseFan.find(id)
    when "Cases"
      product = Case.find(id)
    when "Monitors"
      product = ComputerMonitor.find(id)
    when "CPUs"
      product = Cpu.find(id)
    when "Keyboards"
      product = Keyboard.find(id)
    when "Mouses"
      product = Mouse.find(id)
    when "Optical Drives"
      product = OpticalDrive.find(id)
    when "Power Supplies"
      product = Powersupply.find(id)
    when "Memory"
      product = Ram.find(id)
    when "Speakers"
      product = Speaker.find(id)
    when "Thermal Pastes"
      product = ThermalPaste.find(id)
    when "Video Cards"
      product = Videocard.find(id)
    when "Webcams"
      product = Webcam.find(id)
    end

    is_clean = true
    if session[:cart].present?
      session[:cart].each do |p|
        if p["category"] == category && p["id"] == id
          is_clean = false
        end
      end
    end

    if is_clean
      session[:cart] << {:category=> category, :id=>id, :quantity=>quantity} 
      flash[:notice] = " ➕ Added #{quantity} #{product.name} to cart."
    end

    redirect_to root_path
  end

  def destroy
    id = params[:id].to_i
    category = params[:category].to_s

    redirect_to root_path
  end
end
