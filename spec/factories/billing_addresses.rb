# == Schema Information
#
# Table name: billing_addresses
#
#  id            :integer          not null, primary key
#  first_name    :string
#  last_name     :string
#  address1      :string
#  address2      :string
#  company       :string
#  city          :string
#  province      :string
#  province_code :string
#  zip           :string
#  country       :string
#  country_code  :string
#  phone         :string
#  customer_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_billing_addresses_on_customer_id  (customer_id)
#

FactoryGirl.define do
  factory :billing_address do
    name 'MyString'
    first_name 'MyString'
    last_name 'MyString'
    address1 'MyString'
    address2 'MyString'
    street 'MyString'
    company 'MyString'
    city 'MyString'
    province 'MyString'
    province_code 'MyString'
    zip 'MyString'
    country 'MyString'
    country_code 'MyString'
    phone 'MyString'
    customer_id 'MyString'
  end
end
