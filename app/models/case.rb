class Case < ApplicationRecord
    has_one_attached :image
    belongs_to :orderproduct, optional: true
    belongs_to :category, optional: true

   validates :name, :casetype, :color, presence: true
   validates :name, uniqueness: true, length: { maximum: 100 }
   validates :price, numericality: { only_float: true }
   validates :casetype, :color, :psu, :side_panel, length: { maximum: 30 }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "casetype", "color", "psu", "side_panel", "category_id", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "category"]
    end
end
