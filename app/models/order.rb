class Order < ApplicationRecord
    belongs_to :customers
    has_many :orderproducts
end
