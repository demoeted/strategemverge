class ContactU < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["address", "created_at", "id", "id_value", "phone_number", "updated_at"]
  end
end
