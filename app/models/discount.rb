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

class Discount < ActiveRecord::Base
  DISCOUNT_TYPES = ['FixedAmountDiscount', 'PercentageDiscount', 'ShippingDiscount']

  validates :type, inclusion: DISCOUNT_TYPES

  def title
    code
  end
end
