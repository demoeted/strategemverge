class Order < ApplicationRecord
    belongs_to :customers
    has_many :orderproducts

    validates :date_purchased, presence: true
    validate :valid_date

    private

    def valid_date
      errors.add(:date_purchased, "must be in the past") if date_purchased.present? && order_date > Date.today
    end
end


