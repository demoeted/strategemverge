ActiveAdmin.register Keyboard do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :price, :style, :switches, :backlit_color, :tenkeyless, :connection_type, :color

   #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :type, :color, :psu, :side_panel]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :price
      f.input :style
      f.input :switches
      f.input :backlit_color
      f.input :tenkeyless
      f.input :connection_type
      f.input :color
    end

    f.actions
  end
end
