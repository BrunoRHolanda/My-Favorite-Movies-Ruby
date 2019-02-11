class Api::V1::ProfilesController < ApplicationController
    #before_action :authenticate_user!
    before_action :configure_permitted_parameters, :authenticate_user!, if: :devise_controller?

    def index
        head(:method_not_allowed)
    end

    def create 
        head(:method_not_allowed)
    end

    def show
        head(:method_not_allowed)
    end

    def update
        head(:method_not_allowed)
    end

    def destroy
        head(:method_not_allowed)
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit( :sign_up)
    end

    private

    def user_params
        params.permit( :name, :users_id, :id )
    end

end
