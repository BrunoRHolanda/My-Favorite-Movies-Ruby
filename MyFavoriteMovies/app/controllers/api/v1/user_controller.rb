class Api::V1::UserController < ApplicationController
    def index
        @users = Users.all
        render json: users, status: ok
    end
end
