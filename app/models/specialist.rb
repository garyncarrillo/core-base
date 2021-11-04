class Specialist < ApplicationRecord
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :speciality, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
end
