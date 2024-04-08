class ThermalPaste < ApplicationRecord
    has_one_attached :image
    belongs_to :orderproduct, optional: true
    belongs_to :category, optional: true

   validates :name, :amount, presence: true
   validates :name, uniqueness: true, length: { maximum: 100 }
   validates :price, :amount, numericality: { only_float: true }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "amount", "category_id", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "category"]
    end
end
