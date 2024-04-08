class OpticalDrive < ApplicationRecord
    belongs_to :orderproduct, optional: true
    belongs_to :category, optional: true


   validates :name, presence: true
   validates :name, uniqueness: true, length: { maximum: 100 }
   validates :price, numericality: { only_float: true }
   validates :bd, :dvd, :cd, :bd_write, :dvd_write, :cd_write, numericality: { only_integer: true }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "bd", "dvd", "cd", "bd_write", "dvd_write", "cd_write", "category_id", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "category"]
    end
end
