# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parent_category, class: Category do
    sequence(:name)          { |n| "Parent #{n}" }
    parent_id nil
  end

  factory :child_category, class: Category do
    sequence(:name)          { |n| "Child #{n}"  }
    sequence(:parent_id)     { |n| n}
  end
end
