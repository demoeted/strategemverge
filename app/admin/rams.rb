ActiveAdmin.register Ram do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :price, :speed, :price_per_gb, :color, :first_word_latency, :cas_latency
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :speed, :price_per_gb, :color, :first_word_latency, :cas_latency]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
