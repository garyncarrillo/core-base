class AssessmentSerializer <  BaseSerializer
  attributes :id, :description, :is_active

  belongs_to :assessment_type
end
