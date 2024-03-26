class Orderproduct < ApplicationRecord
    belongs_to :orders
    has_many :case_fans, :cases, :computer_monitors, :cpus, :keyboards, :motherboards, :mice, :optical_drives, :powersupplies, :rams, :speakers, :thermal_pastes, :videocards, :webcams
end
