# == Schema Information
#
# Table name: variants
#
#  id                   :integer          not null, primary key
#  barcode              :string
#  compare_at_price     :integer
#  incoming             :boolean
#  inventory_management :string
#  inventory_policy     :string
#  inventory_quantity   :integer
#  next_incoming_date   :datetime
#  option1              :string
#  option2              :string
#  option3              :string
#  price                :integer
#  requires_shipping    :boolean
#  sku                  :string
#  taxable              :boolean
#  title                :string
#  weight               :string
#  weight_unit          :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Variant < ActiveRecord::Base
end
