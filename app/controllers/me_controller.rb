class MeController < ApplicationController
  def update
    user = current_user
    if user.update(me_params)
      render json: { me: UserSerializer.new(user) }, status: 200
    else
      render json: { errors: user.errors.messages }, status: 406
    end
  end

  def subscribe_newsletter
    user = current_user
    if user.update(is_subscribed_newsletter: true)
      render json: { me: UserSerializer.new(user) }, status: 200
    else
      render json: { errors: user.errors.messages }, status: 406
    end
  end

  def remove_newsletter
    user = current_user
    if user.update(is_subscribed_newsletter: false)
      render json: { me: UserSerializer.new(user) }, status: 200
    else
      render json: { errors: user.errors.messages }, status: 406
    end
  end

  def me_params
    params.require(:me).permit(
     :email,
     :first_name,
     :last_name,
     :job_title,
     :age,
     :sex
    )
  end
end
