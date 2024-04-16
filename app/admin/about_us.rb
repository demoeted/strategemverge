ActiveAdmin.register AboutU do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :description, as: :quill_editor
    end

    f.actions
  end

  controller do
    def create
      super do |format|
        if resource.valid?
          # Call PostService after successful creation
          PostService.new(resource, url_for(resource)).call
        end
      end
    end
  end
end
