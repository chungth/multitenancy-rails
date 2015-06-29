FactoryGirl.define do
  factory :user, :class => Subscribem::User do
    #use sequence method to generate unique account
    sequence(:email) { |n| "test#{n}@example.com"}
    password "password"
    password_confirmation "password"
  end
end