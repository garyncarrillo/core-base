class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  enum role: [:admin, :user, :mananger]
  enum sex: [:woman, :man, :other]

  after_create :assign_assessments

  has_many :assessments_users
  has_many :assessments, through: :assessments_users

  has_many :users_treatments
  has_many :assessment_types, through: :users_treatments

  belongs_to :wish, required: false

  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def assign_assessments
    Assessment.all.each do |assessment|
      AssessmentsUser.create(user_id: self.id, assessment_id: assessment.id, answer: false)
    end
  end

  def assign_treatment (assessment_type_id)
    UsersTreatment.create(user_id: self.id, assessment_type_id: assessment_type_id)
  end

  def remove_treatments
    UsersTreatment.where(user_id: self.id).destroy_all
  end
end
