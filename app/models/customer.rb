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
# Indexes
#
#  index_customers_on_default_address_id  (default_address_id)
#  index_customers_on_email               (email)
#

class Customer < ActiveRecord::Base
  include ActsAsFullName
  # liquid_methods :name, :first_name
end
