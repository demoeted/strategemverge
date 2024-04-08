class Videocard < ApplicationRecord
    has_one_attached :image
    belongs_to :orderproduct, optional: true
    belongs_to :category, optional: true


   validates :name, :chipset, :memory, :core_clock, :boost_clock, :color, :length, presence: true
   validates :name, uniqueness: true, length: { maximum: 100 }
   validates :price, numericality: { only_float: true }
   validates :chipset, :color, length: { maximum: 30 }
   validates :memory, :core_clock, :boost_clock, :length, numericality: { only_integer: true }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "chipset", "memory", "core_clock", "boost_clock", "color", "length", "category_id", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "category"]
    end
end
