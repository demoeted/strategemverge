class ComputerMonitor < ApplicationRecord
    has_one_attached :image
    belongs_to :orderproduct, optional: true
    belongs_to :category, optional: true

   validates :name, :screen_size, :resolution, :refresh_rate, :aspect_ratio, presence: true
   validates :name, uniqueness: true, length: { maximum: 100 }
   validates :price, :response_time, :screen_size, numericality: { only_float: true }
   validates :response_time, numericality: { in: 0.01..15 }
   validates :refresh_rate, numericality: { only_integer: true }
   validates :refresh_rate, numericality: { in: 60..600 }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "screen_size", "resolution", "refresh_rate", "response_time", "panel_type", "aspect_ratio", "category_id", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "category"]
    end
end
