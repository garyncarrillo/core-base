class AssessmentsUser < ApplicationRecord
  belongs_to :assessment
  belongs_to :user
end
