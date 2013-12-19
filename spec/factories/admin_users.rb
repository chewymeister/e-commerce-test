# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin, class: AdminUser do
    email 'admin@test.com'
    password 'password'
  end
end
