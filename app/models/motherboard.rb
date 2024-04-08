class Motherboard < ApplicationRecord
    has_one_attached :image
    belongs_to :orderproduct, optional: true
    belongs_to :category, optional: true


   validates :name, :socket, :form_factor, :max_memory, :memory_slots, :color, presence: true
   validates :name, uniqueness: true, length: { maximum: 100 }
   validates :price, numericality: { only_float: true }
   validates :socket, :form_factor, :color, length: { maximum: 30 }
   validates :max_memory, :memory_slots, numericality: { only_integer: true }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "socket", "form_factor", "max_memory", "memory_slots", "color", "category_id", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "category"]
    end
end
