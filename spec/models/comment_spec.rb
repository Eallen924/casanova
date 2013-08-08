require 'spec_helper'

describe Comment do
  context 'has associations' do
    it { should belong_to(:user) }
    it { should belong_to(:answer) }
    it { should belong_to(:question) }
  end

  context 'validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:commentable_type) }
    it { should validate_presence_of(:commentable_id) }
  end
end
