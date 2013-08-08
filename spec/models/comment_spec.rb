require 'spec_helper'

describe Comment do
  context 'testing associations' do
    it { should have_one(:user) }
    it { should have_one(:answer) }
    it { should have_one(:question) }
  end

  context 'testing db fields' do
    it { should have_db_index(:user_id) }
    it { should have_db_index([:commentable, :commentable_id]) }
  end

  context 'testing mass assignment' do
    it { should allow_mass_assignment_of(:text) }
    it { should allow_mass_assignment_of(:commentable_type) }
    it { should allow_mass_assignment_of(:commentable_id) }
  end

  context 'testing validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:commentable_type) }
    it { should validate_presence_of(:commentable_id) }
  end
end
