class CartController < ApplicationController
  # def create
  #   logger.debug("Adding #{params[:quantity]} #{params[:category]} ID no. #{params[:id]}")
  #   id = params[:id].to_i
  #   category = params[:category]
  #   quantity = params[:quantity].to_i

  #   case category
  #   when "Case Fans"
  #     product = CaseFan.find(id)
  #   when "Cases"
  #     product = Case.find(id)
  #   when "Monitors"
  #     product = ComputerMonitor.find(id)
  #   when "CPUs"
  #     product = Cpu.find(id)
  #   when "Keyboards"
  #     product = Keyboard.find(id)
  #   when "Mouses"
  #     product = Mouse.find(id)
  #   when "Optical Drives"
  #     product = OpticalDrive.find(id)
  #   when "Power Supplies"
  #     product = Powersupply.find(id)
  #   when "Memory"
  #     product = Ram.find(id)
  #   when "Speakers"
  #     product = Speaker.find(id)
  #   when "Thermal Pastes"
  #     product = ThermalPaste.find(id)
  #   when "Video Cards"
  #     product = Videocard.find(id)
  #   when "Webcams"
  #     product = Webcam.find(id)
  #   end

  #   session[:cart] << Hash[:category, category, :id, id, :quantity, quantity] unless session[:cart][:id].include?(id)
  #   redirect_to root_path
  # end

  # def destroy
  #   id = params[:id].to_i

  #   redirect_to root_path
  # end
end
