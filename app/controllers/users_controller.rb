class UsersController < ApplicationController
    def index
        @users = User.all
      end
    
      private 
      
      def show 
        @user = User.find(params[:id])
      end
end
