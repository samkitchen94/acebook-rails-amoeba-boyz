class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      redirect_to posts_url
    else
      flash[:alert] = "email or password not recognised"
      # render 'new'
    end
  end
end
