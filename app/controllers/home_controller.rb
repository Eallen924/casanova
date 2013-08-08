class HomeController < ApplicationController

  skip_before_filter :user_auth

  def index
    @user = User.new
  end
end
