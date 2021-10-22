class AddAssessmentTypeToAssessments < ActiveRecord::Migration[6.1]
  def change
    add_reference :assessments, :assessment_type, index: true
  end
end
