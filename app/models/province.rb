class Province < ApplicationRecord
  has_many :user, foreign_key: 'province'

  validates :province, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "province", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end
end
