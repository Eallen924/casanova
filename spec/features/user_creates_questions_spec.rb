require 'spec_helper'

feature 'User can post questions', :js => true do
  scenario "as a user" do
    user = login

    visit new_question_path

    expect { 
      fill_in 'question[title]', with: "hello world"
      fill_in 'question[body]',   with: "this is a question"
      click_button "Ask Away!"
    }.to change(Question, :count).by(1)   
    
    expect(page).to have_content "hello world"
  end
end
