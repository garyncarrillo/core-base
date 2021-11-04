class UserSerializer <  BaseSerializer
  attributes :id, :email, :first_name, :last_name, :is_active, :job_title, :age, :sex, :is_subscribed_newsletter

  belongs_to :wish
  has_many :assessments
end
