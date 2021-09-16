class SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render_user(resource)
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
