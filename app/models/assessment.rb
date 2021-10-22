class Assessment < ApplicationRecord
  has_many :assessments_users
  has_many :users, through: :assessments_users

  belongs_to :assessment_type
end
