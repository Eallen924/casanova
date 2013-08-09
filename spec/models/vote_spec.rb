require 'spec_helper'

describe Vote do
  context 'has associations' do
    it { should belong_to(:user) }
    it { should belong_to(:votable) }
  end

  context 'validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:votable_id) }
  end
end
