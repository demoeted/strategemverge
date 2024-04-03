ActiveAdmin.register Order do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :date_purchased
  #
  # or
  #
  # permit_params do
  #   permitted = [:date_purchased]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :date_purchased
    end

    f.actions
  end
end
