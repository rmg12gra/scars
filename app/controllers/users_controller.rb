class UsersController < ApplicationController
 def index
  @users = User.all
 end

 def new
  if current_user
   redirect_to root_url, notice: "Already logged in."
  else
   @user = User.new
  end
 end

 def create
  @user = User.new(params[:user])
  if @user.save
   redirect_to root_url, notice: "User created."
  else
   render 'new'
  end
 end

 def show
  if params[:id].to_i == current_user.id || current_user.is_admin? then
   @user = User.find(params[:id])
  else
   redirect_to root_url, notice: "Unauthorised!"
  end
 end
end
