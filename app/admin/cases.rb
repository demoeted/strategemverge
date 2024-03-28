ActiveAdmin.register Case do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :price, :type, :color, :psu, :side_panel

  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :type, :color, :psu, :side_panel]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
