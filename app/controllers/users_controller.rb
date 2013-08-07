class UsersController < ApplicationController

  def new
  end

  def create
    redirect_to user_path(current_user)
  end
end
