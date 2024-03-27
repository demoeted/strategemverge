class Orderproduct < ApplicationRecord
    belongs_to :order
    has_many :case_fans
    has_many :cases
    has_many :computer_monitors
    has_many :cpus
    has_many :keyboards
    has_many :motherboards
    has_many :mice
    has_many :optical_drives
    has_many :powersupplies
    has_many :rams
    has_many :speakers
    has_many :thermal_pastes
    has_many :videocards
    has_many :webcams

    validates :quantity, presence: true
    validates :price, numericality: { only_numeric: true }
    validates :quantity, numericality: { only_integer: true }

  end

