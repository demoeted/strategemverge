ActiveAdmin.register Powersupply do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :price, :powersupplytype, :efficiency, :wattage, :modular, :color
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :type, :efficienty, :wattage, :modular, :color]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :price
      f.input :powersupplytype
      f.input :efficiency
      f.input :wattage
      f.input :modular
      f.input :color
    end

    f.actions
  end
end
