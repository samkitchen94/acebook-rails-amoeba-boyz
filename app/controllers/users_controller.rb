class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user] = @user
    if @user.save
      redirect_to posts_url
    elsif User.find_by(email: params[:user][:email]).present?
      flash[:alert] = "Email address already taken"
      redirect_to users_url
    elsif @user.password != @user.password_confirmation
      flash[:alert] = "Passwords do not match"
      redirect_to users_url
    else 
      flash[:alert] = "Passwords must be between 6 & 10 characters"
      redirect_to users_url
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  #This should be deleted
end
