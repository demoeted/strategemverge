class Mouse < ApplicationRecord
    has_one_attached :image
    belongs_to :orderproduct, optional: true
    belongs_to :category, optional: true


   validates :name, :tracking_method, :connection_type, :color, presence: true
   validates :name, uniqueness: true, length: { maximum: 100 }
   validates :price, numericality: { only_float: true }
   validates :tracking_method, :connection_type, :hand_orientation, :color, length: { maximum: 30 }
   validates :max_dpi, numericality: { only_integer: true }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "tracking_method", "connection_type", "max_dpi", "hand_orientation", "color", "category_id", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "category"]
    end
end
