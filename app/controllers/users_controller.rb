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
   @customer = Customer.create(user_id: @user.id) unless @user.is_admin
   session[:user_id] = @user.id
   redirect_to user_path(@user.id)
  else
   render 'new'
  end
 end

 def show
  if current_user
   if current_user.is_admin? && params[:id]
    @user = User.find(params[:id])
    @customer = Customer.where(user_id: @user.id).first
   else
    @user = current_user
    @customer = Customer.where(user_id: current_user.id).first
   end
  else
   redirect_to root_url, notice: "Unauthorised!" 
  end
 end
end
