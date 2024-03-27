class Cpu < ApplicationRecord
    belongs_to :orderproduct
    
    validates :name, :core_count, :core_clock, :smt, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, :core_clock, :boost_clock, numericality: { only_numeric: true }
    validates :core_count, numericality: { only_integer: true }
    validates :smt, inclusion: [true, false]
    validates_numericality_of :core_clock, :boost_clock, precision: 2
end
