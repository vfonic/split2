FactoryGirl.define do
  factory :customer do
    accepts_marketing false
    default_address_id 1
    email "MyString"
    first_name "MyString"
    last_name "MyString"
  end
end
