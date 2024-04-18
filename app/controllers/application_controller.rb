class ApplicationController < ActionController::Base
    before_action :initialize_session
    helper_method :categories
    
    private
    def initialize_session
        session[:cart] ||= []
    end

    def cart
        case params[:category]
        when "Case Fans"
            CaseFan.find(session[:cart]['Case Fans']['id'])
        when "Cases"

        when "Monitors"

        when "CPUs"

        when "Keyboards"

        when "Mouses"

        when "Optical Drives"

        when "Power Supplies"

        when "Memory"

        when "Speakers"

        when "Thermal Pastes"

        when "Video Cards"

        when "Webcams"

        end
        
    end
end
