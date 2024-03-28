class ThermalPaste < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :amount, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, :amount, numericality: { only_numeric: true }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "amount", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct"]
    end
end
