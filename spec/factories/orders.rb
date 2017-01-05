# == Schema Information
#
# Table name: orders
#
#  id                  :integer          not null, primary key
#  billing_address_id  :integer
#  cancelled_at        :datetime
#  customer_id         :integer
#  financial_status    :string
#  fulfillment_status  :string
#  note                :text
#  order_number        :integer
#  shipping_address_id :integer
#  shipping_price      :integer
#  subtotal_price      :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_orders_on_billing_address_id   (billing_address_id)
#  index_orders_on_customer_id          (customer_id)
#  index_orders_on_order_number         (order_number)
#  index_orders_on_shipping_address_id  (shipping_address_id)
#

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
