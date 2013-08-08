require 'spec_helper'

describe 'User' do
  context "on landing page" do 
    it "can click sign up" do
      visit new_user_url
      expect { 
        fill_in 'user_username', with: "pri1229"
        fill_in 'user_email', with: "pri1229@gmail.com"
        fill_in 'user_password', with: "password"
        fill_in 'user_password_confirmation', with: "password"
        click_button "Sign up"
      }.to change(User, :count).by(1)   
      puts page.body
      page.should have_content "pri1229"   
    end

    it "can login by filling out login form and clicking login"
  end

  context "after logging in" do
    it "can click logout and get logged out"
  end
end
