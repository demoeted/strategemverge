class ContactUController < ApplicationController
    def index
        @contact_business = ContactU.first
    end
end
