class Api::V1::UsersController < ApplicationController
    before_action :configure_permitted_parameters, if: :devise_controller?

    def index
        head( :method_not_allowed )
    end

    def create 
        user = User.new( user_params )
        render json: { errors: user.errors }, status: :unprocessable_entity if user.invalid?
        render json: user, status: :ok if user.save
    end

    def show
        user = User.find( params[:id] )
        render json: user, status: :ok
    end

    def update
        head( :method_not_allowed )
    end

    def destroy
        head(:method_not_allowed )
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit( :sign_up, keys: [ :name, :birthday ])
    end

    private

    def user_params
        params.permit( :name, :email, :password, :password_confirmation, :birthday )
    end
end
