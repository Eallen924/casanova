class UsersController < ApplicationController

  skip_before_filter :user_auth, :only => [:new, :create, :login]
  def new
    @user = User.new
  end

  def create
    user = User.new(params[:user])
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      @errors = user.errors.full_messages
      flash[:errors] = @errors
      redirect_to root_url
    end
  end

  def login
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
