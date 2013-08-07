require 'spec_helper'

describe Question do

  it { should be_instance_of(Question) }

  context 'testing associations' do
    it { should belong_to(:user) }
  end

  context 'testing attr_accessible' do
    it { should allow_mass_assignment_of(:user_id) }
    it { should allow_mass_assignment_of(:title) }
    it { should allow_mass_assignment_of(:body) }
  end

  context 'testing validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end
end
