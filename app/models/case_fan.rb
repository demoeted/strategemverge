class CaseFan < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :size, :color, :pwm, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :size, numericality: { only_integer: true }
    validates :size, numericality: { in: 40..200 }

    def self.ransackable_attributes(auth_object = nil)
        ["color", "created_at", "id", "id_value", "name", "price", "pwm", "rpm", "size", "updated_at"]
      end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct"]
      end
end
