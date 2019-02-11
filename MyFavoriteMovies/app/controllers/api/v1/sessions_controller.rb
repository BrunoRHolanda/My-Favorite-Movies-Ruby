class Api::V1::SessionsController < ApplicationController

    def index
        head( :method_not_allowed )
    end

    def create 
        user = User.where( email: params[ :email ]).first

        if user&.valid_password?( params[:password ])
            render json: user.as_json( only: [ :email, :authentication_token ]), status: :created
        else
            head( :unauthorized )
        end
    end

    def show
        head( :method_not_allowed )
    end

    def update
        head( :method_not_allowed )
    end

    def destroy
        head( :method_not_allowed )
    end
end
