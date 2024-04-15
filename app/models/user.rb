class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :province, optional: true

  validates :first_name, :last_name, :street_address, :city, :province_id, presence: true

  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :user
  end

  def self.ransackable_attributes(auth_object = nil)
    ["first_name", "last_name", "street_address", "city", "province_id", "role", "email", "password", "password_confirmation", "encrypted_password", "reset_password_token", "reset_password_sent_at", "remember_created_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["province"]
  end
end
