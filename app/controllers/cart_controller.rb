class CartController < ApplicationController
  def create
  #   logger.debug("Adding #{params[:quantity]} #{params[:category]} ID no. #{params[:id]}")
    id = params[:id].to_i
    category = params[:category]
    quantity = params[:quantity].to_i
    name = params[:name].to_s

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
      session[:cart] << {:category=> category, :id=>id, :quantity=>quantity, :name=>name} 
      flash[:notice] = " ➕ Added #{quantity} #{product.name} to cart."
    end

    redirect_to root_path
  end

  def destroy
    product_id = params[:product_id].to_i
    category = params[:category].to_s

    case category
    when "Case Fans"
      product = CaseFan.find(product_id)
    when "Cases"
      product = Case.find(product_id)
    when "Monitors"
      product = ComputerMonitor.find(product_id)
    when "CPUs"
      product = Cpu.find(product_id)
    when "Keyboards"
      product = Keyboard.find(product_id)
    when "Mouses"
      product = Mouse.find(product_id)
    when "Optical Drives"
      product = OpticalDrive.find(product_id)
    when "Power Supplies"
      product = Powersupply.find(product_id)
    when "Memory"
      product = Ram.find(product_id)
    when "Speakers"
      product = Speaker.find(product_id)
    when "Thermal Pastes"
      product = ThermalPaste.find(product_id)
    when "Video Cards"
      product = Videocard.find(product_id)
    when "Webcams"
      product = Webcam.find(product_id)
    end

    session[:cart].delete_if {|product| product["category"] == category && product["id"] == product_id}
    flash[:notice] = "➖ #{product.name} has been removed from cart."

    redirect_to root_path
  end
end
