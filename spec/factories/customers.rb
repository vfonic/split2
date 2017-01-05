# == Schema Information
#
# Table name: customers
#
#  id                 :integer          not null, primary key
#  accepts_marketing  :boolean
#  default_address_id :integer
#  email              :string
#  first_name         :string
#  last_name          :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

FactoryGirl.define do
  factory :customer do
    accepts_marketing false
    default_address_id 1
    email "MyString"
    first_name "MyString"
    last_name "MyString"
  end
end
