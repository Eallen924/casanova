require 'spec_helper'

describe UsersController do 
  # a page shows up where a user can sign up and contains a form
  it "visitor can access signup page" do
    get :new
    expect(response.status).to eq 200
  end
  # a page shows up where a user can login
  # a page shows up after a user has successfully logged in
  # a page shows up after a user has successfully logged out
  # a page shows up after a user has successfully created an account 
end
  



  # let(:user) { User.new }
  # context "a user is logged in" do
  #   session[:id] = 1
  #   it "user can sign in" do
  #     get :index
  #     expect(response.status).to eq 200
  #   end
  # end
