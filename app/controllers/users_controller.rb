class UsersController < ApplicationController

  before_action :authorize, only: [:show]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create

   @user = User.new(user_params)
   if @user.save
    redirect_to new_session_path
   end
  end

  def edit
  end

  def update
  end

  def destroy   
    #delete the cookie and log the user out 
    #in the user controller for destroy.
    @user = current_user
    session[:user_id] = nil
    if @user.destroy
      redirect_to root_path
    end    
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
