# == Schema Information
#
# Table name: carts
#
#  id                   :integer          not null, primary key
#  note                 :text
#  original_total_price :integer
#  total_price          :integer
#  total_weight         :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

FactoryGirl.define do
  factory :cart do
    note 'MyText'
    original_total_price 1
    total_price 1
    total_weight 1
  end
end
