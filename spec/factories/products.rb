FactoryGirl.define do
  factory :product do
    sequence(:name)               { |n| "Product #{n}" }
    sequence(:price)              { |n| n+1 }
    sequence(:description)        { |n| "Product #{n} is great" }
    availability_date DateTime.new(2014,1,1)
    active_status true
  end
end