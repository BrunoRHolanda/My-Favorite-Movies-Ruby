class Api::V1::ProfilesController < ApplicationController
    before_action :authenticate_user!

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

end
