class ApplicationController < ActionController::API
  before_action :authenticate_user!

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def render_user(resource)
    if resource.errors.empty?
      render json: UserSerializer.new(resource)
    else
     validation_error(resource)
    end
  end

  def not_found(exception)
    exception.to_s.match(/Couldn't find ([\w]+) with 'id'=([\d]+)/)
    render json: {status: 404, errors: {$1 => ["#{$1} with id #{$2} was not found"]}}, status: 404
  end
end
