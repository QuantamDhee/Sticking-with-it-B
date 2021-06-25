class Api::V1::UsersController < ApplicationController
    def index 
        users = User.all

        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: {id: user.id, name: user.name}
    end
end
