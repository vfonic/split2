require 'rails_helper'

RSpec.describe Discount, type: :model do
  describe '#title' do
    it 'returns the discount code' do
      discount = Discount.new(code: 'CODE')

      expect(discount.title).to eq('CODE')
    end
  end

  describe '::DISCOUNT_TYPES' do
    it 'returns expected items' do
      expect(Discount::DISCOUNT_TYPES).to eq(
        ['FixedAmountDiscount', 'PercentageDiscount', 'ShippingDiscount']
      )
    end
  end
end
