require 'spec_helper'

describe Comment do
  context 'has associations' do
    it { should belong_to(:user) }
    it { should belong_to(:commentable) }
  end

  context 'validations' do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:commentable) }
  end
end
