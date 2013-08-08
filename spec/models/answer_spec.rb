require 'spec_helper'

describe Answer do
  it {should be_instance_of(Answer) }

  context 'describes associations' do
    it { should belong_to(:user) }
    it { should belong_to(:question) }
    it { should have_many(:comments) }
  end

  context 'has validations' do
    it { should validate_presence_of(:body) }
  end

  context "allow mass assignment" do
    it { should allow_mass_assignment_of(:body) }
  end
end
