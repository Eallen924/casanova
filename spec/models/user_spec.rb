require 'spec_helper'

describe User do
  context "validates presence of user attributes" do
    it { should validate_presence_of(:username)              }
    it { should validate_presence_of(:email)                 }
    it { should validate_presence_of(:password)              }
    it { should validate_presence_of(:password_confirmation) }
    it { should validate_presence_of(:password_digest)       }
  end

  context "describes associations" do
    it { should have_many(:questions) }
    it { should have_many(:answers) }
    it { should have_many(:comments) }
  end
end

