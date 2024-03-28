class AboutUController < ApplicationController
    def index
        @about_business = AboutU.first
    end
end
