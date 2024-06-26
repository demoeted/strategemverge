class Speaker < ApplicationRecord
    has_one_attached :image
    belongs_to :orderproduct, optional: true
    belongs_to :category, optional: true


   validates :name, :configuration, :wattage, :frequency, :color, presence: true
   validates :name, uniqueness: true, length: { maximum: 100 }
   validates :price, :configuration, :wattage, numericality: { only_float: true }
   validates :frequency, :color, length: { maximum: 30 }
   validates_numericality_of :configuration, precision: 2

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "configuration", "wattage", "frequency", "color", "category_id", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "category"]
    end
end
