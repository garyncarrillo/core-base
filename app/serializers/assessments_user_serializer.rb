class AssessmentsUserSerializer <  BaseSerializer
  attributes :id, :answer

  belongs_to :assessment
  belongs_to :user
end
