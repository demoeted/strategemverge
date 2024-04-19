ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :first_name, :last_name, :street_address, :city, :province, :role
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :first_name, :last_name, :street_address, :city, :province, :role]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :password, as: :string
      f.input :password_confirmation, as: :string
      f.input :street_address
      f.input :city
      f.input :province, as: :select, collection: Province.pluck(:province, :id)
      f.input :role




    end

    f.actions
  end

  # Calls the PostService class to post a message with the PC parts name and show page url once the PC part is created.
  controller do
    def create
      super do |format|
        if resource.valid?
          PostService.new(resource, url_for(resource)).call
        end
      end
    end
  end
end
