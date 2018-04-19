class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
        flash[:notice] = "You have successfully signed up!"
        redirect_to user_path(@user.id)
        else
        redirect_to new_user_path
        end
    end
    
    def index
        @user = User.all
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        respond_to do |format|
        flash[:success] = "User deleted."
        format.html { redirect_to user_path }
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password_digest, :hometown, :level, :contact, :facebook_url, :instagram_url, :profile_picture)
    end
end

