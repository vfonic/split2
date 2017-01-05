class Discount < ActiveRecord::Base
  DISCOUNT_TYPES = ['FixedAmountDiscount', 'PercentageDiscount', 'ShippingDiscount']

  validates :type, inclusion: DISCOUNT_TYPES

  def title
    code
  end
end
