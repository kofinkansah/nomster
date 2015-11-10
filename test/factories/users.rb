FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "awesomecookies#{n}@gmail.com"
    end
    password "12312312345"
    password_confirmation "12312312345"
  end
end