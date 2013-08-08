FactoryGirl.define do
  factory :user do
    username "Bill"
    email "bill@gmail.com"
    password "abc123"
    password_confirmation "abc123"
  end
end
