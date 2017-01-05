# == Schema Information
#
# Table name: variants
#
#  id                   :integer          not null, primary key
#  barcode              :string
#  compare_at_price     :integer
#  incoming             :boolean
#  inventory_management :string
#  inventory_policy     :string
#  inventory_quantity   :integer
#  next_incoming_date   :datetime
#  option1              :string
#  option2              :string
#  option3              :string
#  price                :integer
#  requires_shipping    :boolean
#  sku                  :string
#  taxable              :boolean
#  title                :string
#  weight               :string
#  weight_unit          :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

FactoryGirl.define do
  factory :variant do
    barcode "MyString"
    compare_at_price 1
    incoming false
    inventory_management "MyString"
    inventory_policy "MyString"
    inventory_quantity 1
    next_incoming_date "2017-01-05 23:22:37"
    option1 "MyString"
    option2 "MyString"
    option3 "MyString"
    price 1
    requires_shipping false
    sku "MyString"
    taxable false
    title "MyString"
    weight "MyString"
    weight_unit "MyString"
  end
end
