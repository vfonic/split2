# == Schema Information
#
# Table name: discounts
#
#  id         :integer          not null, primary key
#  code       :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_discounts_on_code  (code)
#

FactoryGirl.define do
  factory :discount do
    code 'MyString'
    type Discount::DISCOUNT_TYPES[0]
  end
end
