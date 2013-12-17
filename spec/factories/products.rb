FactoryGirl.define do
  factory :product do
    sequence(:name)               { |n| "Product #{n}" }
    sequence(:price)              { |n| n + 0.55 }
    sequence(:description)        { |n| "Product #{n} is great" }
    availability_date DateTime.new(2013,1,1)
    active_status true
  end

  factory :hidden_product, class: Product do
    name "Hidden product"
    price 5.55
    description "This should not show up on the homepage"
    active_status false
    availability_date DateTime.new(2014,1,1)
  end
end