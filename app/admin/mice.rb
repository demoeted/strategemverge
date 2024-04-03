ActiveAdmin.register Mouse do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :price, :tracking_method, :connection_type, :max_dpi, :hand_orientation, :color
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :tracking_method, :connection_type, :max_dpi, :hand_orientation, :color]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :price
      f.input :tracking_method
      f.input :connection_type
      f.input :max_dpi
      f.input :hand_orientation
      f.input :color
    end

    f.actions
  end
end
