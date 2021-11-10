class UsersTreatmentSerializer <  BaseSerializer
  attributes :id
  
  belongs_to :user
  belongs_to :assessment_type
end
