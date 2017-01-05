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

RSpec.describe Product, type: :model do
end
