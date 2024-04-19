ActiveAdmin.register Motherboard do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :price, :socket, :form_factor, :max_memory, :memory_slots, :color, :category_id, :image

   remove_filter :image_attachment, :image_blob
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :socket, :form_factor, :max_memory, :memory_slots, :color]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :price
      f.input :socket
      f.input :form_factor
      f.input :max_memory
      f.input :memory_slots
      f.input :color, as: :text
      f.input :category_id, as: :select, collection: Category.pluck(:name, :id)

      if f.object.image.attached?
        f.input :image, as: :file, hint: image_tag(f.object.image, size: "200x200")
      else
        f.input :image, as: :file, hint: "No image uploaded yet"
      end

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
