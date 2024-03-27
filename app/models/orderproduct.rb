class Orderproduct < ApplicationRecord
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
