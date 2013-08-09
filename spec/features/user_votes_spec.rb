require 'spec_helper'

feature 'User can vote on questions, answers and comments' do
  scenario "as a user" do
    user = login

    visit #dashboard

    expect(page).to have_content #list of questions

    click_link "View"

    expect(page).to have_content #question with list of answers / comments
    #within("#question") do   
    #within("#answer") do   
    within("#comment") do   
      expect { 
        click_button "Like"
      }.to change(Vote, :count).by(1)   
    end
  end
end
