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

class Cart < ActiveRecord::Base
end
