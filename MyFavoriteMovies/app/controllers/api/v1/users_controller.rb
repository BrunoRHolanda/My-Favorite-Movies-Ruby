class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        render json: users, status: :ok
    end

    def show
        user = User.find( params[:id] )
        render json: user, status: :ok
    end

    def create 
        user = User.new( user_params )
        render json: { errors: user.errors }, status: :unprocessable_entity if user.invalid?
        render json: user, status: :ok if user.save
    end

    private

    def user_params
        params.permit( :name, :email, :password, :birthday )
    end
end
