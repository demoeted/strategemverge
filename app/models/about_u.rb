class AboutU < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "id_value", "name", "updated_at"]
  end

 validates :name, :description, presence: true
 validates :name, :description, length: { maximum: 300 }
end
