FactoryGirl.define do
  factory :discount do
    code "MyString"
    type Discount::DISCOUNT_TYPES[0]
  end
end
