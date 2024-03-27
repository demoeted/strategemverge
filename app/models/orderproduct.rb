class Orderproduct < ApplicationRecord
<<<<<<< HEAD
    belongs_to :orders
    has_many :case_fan
    has_many :case
    has_many :computer_monitor
    has_many :cpu
    has_many :keyboard
    has_many :motherboard
    has_many :mouse
    has_many :optical_drive
    has_many :powersupply
    has_many :ram
    has_many :speaker
    has_many :thermal_paste
    has_many :videocard
    has_many :webcam
end
=======
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

>>>>>>> b025189a390599af11793a8166a97c3c57562f75
