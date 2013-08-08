require 'spec_helper'

describe Question do

  user = FactoryGirl.build(:user)
  user.questions.build(title: "My Love Question", body: "Im scared of lovin")

  it { should be_instance_of(Question) }

  context 'testing associations' do
    it { should belong_to(:user) }
    it { should have_many(:answers) }
    it { should have_many(:comments) }
  end

  context 'testing attr_accessible' do
    it { should allow_mass_assignment_of(:title) }
    it { should allow_mass_assignment_of(:body) }
  end

  context 'testing validations' do
    it { should validate_presence_of(:title)}
    it { should validate_presence_of(:body) }
  end
end
