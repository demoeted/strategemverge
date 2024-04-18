class ProductsController < ApplicationController
 def index
   @case_fans = CaseFan.all
   @cases = Case.all
   @computer_monitors = ComputerMonitor.all
   @cpus = Cpu.all
   @keyboards = Keyboard.all
   @motherboards = Motherboard.all
   @mice = Mouse.all
   @optical_drives = OpticalDrive.all
   @power_supplies = Powersupply.all
   @rams = Ram.all
   @speakers = Speaker.all
   @thermal_pastes = ThermalPaste.all
   @videocards = Videocard.all
   @webcams = Webcam.all

   @products = [@case_fans, @cases, @computer_monitors, @cpus, @keyboards, @motherboards, @mice, @optical_drives, @power_supplies, @rams, @speakers, @thermal_pastes, @videocards, @webcams].flatten
   @products = Kaminari.paginate_array(@products).page(params[:page]).per(25)
   filter = params[:filter]
    @message = ""
    case filter
      when 'all'
        @products = Kaminari.paginate_array(@products).page(params[:page]).per(25)
        @message = ""
      when 'new'
        @products = Kaminari.paginate_array(@products).where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
        @message = "Filtered: New"
      when 'recently updated'
        @products = Kaminari.paginate_array(@products).where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
        @message = "Filtered: Recently Updated"
    end

   @categories = Category.all
 end
end
