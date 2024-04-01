class Keyboard < ApplicationRecord
    belongs_to :orderproduct, optional: true
    belongs_to :category, optional: true


    validates :name, :style, :tenkeyless, :connection_type, :color, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :style, :backlit_color, :color, length: { maximum: 30 }
    validates :switches, length: { maximum: 100 }
    validates :connection_type, length: { maximum: 50 }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "style", "switches", "backlit_color", "tenkeyless", "connection_type", "category_id", "color", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "category"]
    end
end
