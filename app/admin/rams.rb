ActiveAdmin.register Ram do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :price, :speed, :price_per_gb, :color, :first_word_latency, :cas_latency, :category_id, :image

   remove_filter :image_attachment, :image_blob
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :speed, :price_per_gb, :color, :first_word_latency, :cas_latency]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :price
      f.input :speed
      f.input :price_per_gb
      f.input :color
      f.input :first_word_latency
      f.input :cas_latency
      f.input :category_id, as: :select, collection: Category.pluck(:name, :id)

      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image, size: "200x200") : ""


    end

    f.actions
  end
end
