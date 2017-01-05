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

require 'rails_helper'

RSpec.describe BillingAddress, type: :model do
  it_behaves_like 'address'
  it_behaves_like 'full_name'
end
