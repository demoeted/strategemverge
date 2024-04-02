ActiveAdmin.register OpticalDrive do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :price, :bd, :dvd, :cd, :bd_write, :dvd_write, :cd_write
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :bd, :dvd, :cd, :bd_write, :dvd_write, :cd_write]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :price
      f.input :bd
      f.input :dvd
      f.input :cd
      f.input :bd_write
      f.input :dvd_write
      f.input :cd_write
    end

    f.actions
  end
end
