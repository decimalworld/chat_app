FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "User_#{n}"}
    password { "password" }    
  end
end
