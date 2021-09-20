module Admin
  class UsersController < ApplicationController
    def index
      users = User.user
      render json: { users: UserSerializer.new(users) }, status: 200
    end

    def create
      user = User.user.new(user_params)

      if user.save
        user.invite!
        render json: { user: UserSerializer.new(user) }, status: 200
      else
        render json: { errors: user.errors.messages }, status: 406
      end
    end

    def update
      user = User.user.find(params[:id])

      if user.update(user_params)
        render json: { user: UserSerializer.new(user) }, status: 201
      else
        render json: { errors: user.errors.messages }, status: 406
      end
    end

    def show
      user = User.user.find(params[:id])
      render json: { user: UserSerializer.new(user) }, status: 200
    end

    def inactivate
      user = User.user.find(params[:id])

      if user.update(is_active: false)
        render json: { user: UserSerializer.new(user) }, status: 201
      else
        render json: { errors: user.errors.messages }, status: 406
      end
    end

    def activate
      user = User.user.find(params[:id])

      if user.update(is_active: true)
        render json: { user: UserSerializer.new(user) }, status: 201
      else
        render json: { errors: user.errors.messages }, status: 406
      end
    end

    private

    def user_params
       params.require(:user).permit(:first_name, :last_name, :email)
    end
  end
end
