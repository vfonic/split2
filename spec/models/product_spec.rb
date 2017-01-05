# == Schema Information
#
# Table name: products
#
#  id                   :integer          not null, primary key
#  compare_at_price_max :integer
#  compare_at_price_min :integer
#  description          :text
#  title                :string
#  vendor               :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
