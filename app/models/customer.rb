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

class Customer < ActiveRecord::Base
  include Concerns::ActsAsFullName
end
