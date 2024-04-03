ActiveAdmin.register Webcam do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :price, :resolutions, :connection, :focus_type, :os, :fov
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :resolutions, :connection, :focus_type, :os, :fov]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :price
      f.input :resolutions
      f.input :connection
      f.input :focus_type
      f.input :os
      f.input :fov
    end

    f.actions
  end
  
end
