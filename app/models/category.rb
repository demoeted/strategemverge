class Category < ApplicationRecord
  has_many :case_fan, foreign_key: 'category_id'
  has_many :case, foreign_key: 'category_id'
  has_many :computer_monitor, foreign_key: 'category_id'
  has_many :cpu, foreign_key: 'category_id'
  has_many :keyboard, foreign_key: 'category_id'
  has_many :motherboard, foreign_key: 'category_id'
  has_many :mouse, foreign_key: 'category_id'
  has_many :optical_drive, foreign_key: 'category_id'
  has_many :powersupply, foreign_key: 'category_id'
  has_many :ram, foreign_key: 'category_id'
  has_many :speaker, foreign_key: 'category_id'
  has_many :thermal_paste, foreign_key: 'category_id'
  has_many :videocard, foreign_key: 'category_id'
  has_many :webcam, foreign_key: 'category_id'

  validates :name, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "name", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["case_fan", "case", "computer_monitor", "cpu", "keyboard", "motherboard", "mouse", "optical_drive", "order", "powersupply", "ram", "speaker", "thermal_paste", "videocard", "webcam"]
  end
end
