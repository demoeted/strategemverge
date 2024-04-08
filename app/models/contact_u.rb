class ContactU < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["address", "created_at", "id", "id_value", "phone_number", "updated_at"]
  end

 validates :phone_number, :address, presence: true
 validates :phone_number, :address, length: { maximum: 100 }
end
