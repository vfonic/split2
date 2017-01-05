# == Schema Information
#
# Table name: products
#
#  id                   :integer          not null, primary key
#  compare_at_price_max :integer
#  compare_at_price_min :integer
#  description          :text
#  title                :string
#  vendor               :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

FactoryGirl.define do
  factory :product do
    compare_at_price_max 1
    compare_at_price_min 1
    description "MyText"
    title "MyString"
    vendor "MyString"
  end
end
