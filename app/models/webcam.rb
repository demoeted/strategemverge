class Webcam < ApplicationRecord
    belongs_to :orderproduct, optional: true
    belongs_to :categories, optional: true


    validates :name, :resolutions, :connection, :os, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, :fov, numericality: { only_numeric: true }
    validates :fov, numericality: { in: 50..200 }
    validates :resolutions, :connection, :focus_type, :os, length: { maximum: 50 }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "resolutions", "connection", "focus_type", "os", "fov", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct"]
    end
end
