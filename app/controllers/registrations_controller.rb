class RegistrationsController < Devise::RegistrationsController
  def create
    user = User.new(
      email: user_params[:email],
      first_name: user_params[:first_name],
      last_name: user_params[:last_name],
      job_title: user_params[:job_title],
      age: user_params[:age],
      sex: user_params[:sex],
      password: user_params[:password],
      password_confirmation: user_params[:password_confirmation],
      role: 'user'
    )

    if user.save
       sign_in(user)
       render json: UserSerializer.new(user), status: 200
    else
      render json: { errors: user.errors.messages }, status: 406
    end
  end

  private

  def user_params
    params.require(:user).permit(
     :email,
     :first_name,
     :last_name,
     :job_title,
     :age,
     :sex,
     :password,
     :password_confirmation,
    )
  end
end
