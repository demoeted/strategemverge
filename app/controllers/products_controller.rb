class ProductsController < ApplicationController
 def index
    @products = CaseFan.all + Case.all + ComputerMonitor.all + Cpu.all + Keyboard.all + 
                Motherboard.all + Mouse.all + OpticalDrive.all + Powersupply.all + Ram.all + 
                Speaker.all + ThermalPaste.all + Videocard.all + Webcam.all
    @categories = Category.all
 end
end
