class UsersTreatment < ApplicationRecord
  belongs_to :user
  belongs_to :assessment_type
end
