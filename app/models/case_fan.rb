class CaseFan < ApplicationRecord
    belongs_to :orderproduct, optional: true
    belongs_to :category, optional: true

    validates :name, :price, :size, :color, :rpm, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :size, numericality: { only_integer: true }
    validates :size, numericality: { in: 40..200 }
    validates :color, length: { maximum: 50 }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "size", "color", "rpm", "pwm", "category_id", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "category"]
    end
end
