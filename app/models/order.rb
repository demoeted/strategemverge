class Order < ApplicationRecord
    belongs_to :customer
    has_many :orderproduct

    validates :date_purchased, presence: true
    validate :valid_date

    private

    def valid_date
      errors.add(:date_purchased, "must be in the past") if date_purchased.present? && order_date > Date.today
    end

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "customer_id", "date_purchased", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "customer"]
    end
end


