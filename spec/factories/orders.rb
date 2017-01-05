FactoryGirl.define do
  factory :order do
    billing_address_id 1
    cancelled_at "2017-01-05 22:55:25"
    customer_id 1
    financial_status "MyString"
    fulfillment_status "MyString"
    note "MyText"
    order_number 1
    shipping_address_id 1
    shipping_price 1
    subtotal_price 1
  end
end
