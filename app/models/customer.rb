class Customer < ApplicationRecord
    has_many :order

    validates :first_name, :last_name, :email, :phone_number, :address, presence: true
    validates :first_name, :last_name, :address, length: { maximum: 100 }
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :email, :phone_number, uniqueness: true
    validates :phone_number, length: { maximum: 15 }
    validates :email, length: { maximum: 50 }
end