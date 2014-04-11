# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "mac@example.com "
    password "supermac"
    password_confirmation "supermac"
  end
end
