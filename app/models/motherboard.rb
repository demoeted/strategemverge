class Motherboard < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :socket, :form_factor, :max_memory, :memory_slots, :color, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :socket, :form_factor, :color, length: { maximum: 30 }
    validates :max_memory, :memory_slots, numericality: { only_integer: true }

end
