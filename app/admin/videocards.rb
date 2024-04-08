ActiveAdmin.register Videocard do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :price, :chipset, :memory, :core_clock, :boost_clock, :color, :length, :category_id, :image

   remove_filter :image_attachment, :image_blob
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :chipset, :memory, :core_clock, :boost_clock, :color, :length]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :price
      f.input :chipset
      f.input :memory
      f.input :core_clock
      f.input :boost_clock
      f.input :color
      f.input :length
      f.input :category_id, as: :select, collection: Category.pluck(:name, :id)

      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image, size: "200x200") : ""


    end

    f.actions
  end
end
