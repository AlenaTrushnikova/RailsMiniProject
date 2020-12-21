class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @recipes = @user.recipes
    end

    def destroy
        @user = User.find(params[:id]).destroy
        redirect_to users_path
    end
end
