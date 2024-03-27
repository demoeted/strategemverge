class Orderproduct < ApplicationRecord
  belongs_to :order
  has_many :case_fans, foreign_key: 'product_id'
  has_many :cases, foreign_key: 'product_id'
  has_many :computer_monitors, foreign_key: 'product_id'
  has_many :cpus, foreign_key: 'product_id'
  has_many :keyboards, foreign_key: 'product_id'
  has_many :motherboards, foreign_key: 'product_id'
  has_many :mice, foreign_key: 'product_id'
  has_many :optical_drives, foreign_key: 'product_id'
  has_many :powersupplies, foreign_key: 'product_id'
  has_many :rams, foreign_key: 'product_id'
  has_many :speakers, foreign_key: 'product_id'
  has_many :thermal_pastes, foreign_key: 'product_id'
  has_many :videocards, foreign_key: 'product_id'
  has_many :webcams, foreign_key: 'product_id'

  validates :quantity, presence: true
  validates :price, numericality: { only_numeric: true }
  validates :quantity, numericality: { only_integer: true }
end