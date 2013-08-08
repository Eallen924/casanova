require 'spec_helper'

describe 'User', :js => true do
  context "on landing page" do 
    it "can click sign up" do
      visit new_user_path
      user = FactoryGirl.build(:user)
      within("#sign_up") do
        expect { 
          fill_in 'user_username',              with: user.username
          fill_in 'user_email',                 with: user.email
          fill_in 'user_password',              with: user.password
          fill_in 'user_password_confirmation', with: user.password
          click_button "Sign up"
        }.to change(User, :count).by(1)   
      end 
        expect(page).to have_content user.username   
    end

    it "can login by filling out login form and clicking login" do
      user = login
      
      expect(page).to have_content user.username
      expect(page).to have_content "Logout"
    end
  end

  context "after logging in" do
    it "can click logout and get logged out" do
      login

      click_link "Logout"
      expect(page).to have_content "Sign up"
    end
  end
end
