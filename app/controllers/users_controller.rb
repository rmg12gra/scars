class UsersController < ApplicationController
 def index
  @users = User.all
 end

 def new
  @user = User.new
 end

 def create
  @user = User.new(params[:user])
  if @user.save
   redirect_to root_url, notice: "User Created!"
  else
   render 'new'
  end
 end

 def show
  if params[:id].to_i == current_user.id || current_user.id == 1 then
   @user = User.find(params[:id])
  else
   redirect_to root_url, notice: "Unauthorised!"
  end
 end
end
