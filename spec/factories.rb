FactoryGirl.define do
  factory :user do
    username "Bill"
    sequence(:email) {|n| "email+#{n}@gmail.com"}
    password "abc123"
    password_confirmation "abc123"
  end

  factory :question do
    user
    title "How does the internet work?"
    body "I really wanna know!"
  end
end
