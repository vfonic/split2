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

class Discount < ActiveRecord::Base
  DISCOUNT_TYPES = %w(FixedAmountDiscount PercentageDiscount ShippingDiscount).freeze

  validates :type, inclusion: DISCOUNT_TYPES

  def title
    code
  end
end
