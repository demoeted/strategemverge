ActiveAdmin.register ContactU do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :phone_number, :address
  #
  # or
  #
  # permit_params do
  #   permitted = [:phone_number, :address]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :phone_number
      f.input :address
    end

    f.actions
  end
end
