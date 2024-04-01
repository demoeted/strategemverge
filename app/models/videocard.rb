class Videocard < ApplicationRecord
    belongs_to :orderproduct, optional: true
    belongs_to :categories, optional: true


    # validates :name, :chipset, :memory, :core_clock, :boost_clock, :color, :length, presence: true
    # validates :name, uniqueness: true, length: { maximum: 100 }
    # validates :price, numericality: { only_numeric: true }
    # validates :chipset, :color, length: { maximum: 30 }
    # validates :memory, :core_clock, :boost_clock, :length, numericality: { only_integer: true }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "chipset", "memory", "core_clock", "boost_clock", "color", "length", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct"]
    end
end
