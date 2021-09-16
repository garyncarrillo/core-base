class ApplicationController < ActionController::API
  before_action :authenticate_user!

  def render_user(resource)
    if resource.errors.empty?
      render json: UserSerializer.new(resource)
    else
     validation_error(resource)
    end
  end
end
