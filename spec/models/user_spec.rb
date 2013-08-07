require 'spec_helper'

describe User do 
  it { should validate_presence_of(:username)              }  
  it { should validate_presence_of(:email)                 }  
  it { should validate_presence_of(:password)              }  
  it { should validate_presence_of(:password_confirmation) }  
end




# context "given valid parameters" do
#     it "user should be created" do
#       User.new(username: "pri1229", email: "pri1229@gmail.com" password: "password", password_confirmation: "password_confirmation")
#       expect(User.all.count).to eq
#     end
#   end
