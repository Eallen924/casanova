class UsersController < ApplicationController

  def new
  end

  def create
    redirect_to user_path(current_user)
  end

  def login
    p params
    user = User.find_by_username(params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to root_url
    end
  end

  def logout
    session.clear
    redirect_to root_url
  end
end
