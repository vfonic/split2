# == Schema Information
#
# Table name: carts
#
#  id                   :integer          not null, primary key
#  note                 :text
#  original_total_price :integer
#  total_price          :integer
#  total_weight         :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'rails_helper'

RSpec.describe Cart, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
