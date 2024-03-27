class Webcam < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :resolutions, :connection, :os, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, :fov, numericality: { only_numeric: true }
    validates :fov, numericality: { in: 50..200 }
    validates :resolutions, :connection, :focus_type, :os, length: { maximum: 50}
end
