class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  enum role: [:admin, :user, :mananger]
  enum sex: [:woman, :man, :other]

  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
