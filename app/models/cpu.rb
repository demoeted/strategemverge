class Cpu < ApplicationRecord
    has_one_attached :image
    belongs_to :orderproduct, optional: true
    belongs_to :category, optional: true


   validates :name, :core_count, :core_clock, :smt, presence: true
   validates :name, uniqueness: true, length: { maximum: 100 }
   validates :price, :core_clock, :boost_clock, numericality: { only_float: true }
   validates :core_count, numericality: { only_integer: true }
   validates :smt, inclusion: [true, false]
   validates_numericality_of :core_clock, :boost_clock, precision: 2

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "core_clock", "boost_clock", "integrated_graphics", "smt", "category_id", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "category"]
    end
end
