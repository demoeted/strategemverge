class Case < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :casetype, :color, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :casetype, :color, :psu, :side_panel, length: { maximum: 30 }
end
