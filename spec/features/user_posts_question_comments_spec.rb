require 'spec_helper'

feature 'User can post comments on questions' do
  scenario "as a user" do
    user = login

    question = FactoryGirl.create(:question)
    
    visit question_path(question)

    expect(page).to have_content question.title

    within("#new_comment") do   
      expect { 
        fill_in 'comment[text]', with: "nice question!"
        click_button "Submit"
      }.to change(Comment, :count).by(1)   
    end

    expect(page).to have_content "nice question!"
    expect(page).to have_content user.username
  end
end
