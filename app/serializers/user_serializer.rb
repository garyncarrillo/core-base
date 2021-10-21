class UserSerializer <  BaseSerializer
  attributes :id, :email, :first_name, :last_name, :is_active, :job_title, :age, :sex

  belongs_to :wish
end
