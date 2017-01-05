# == Schema Information
#
# Table name: collections
#
#  id              :integer          not null, primary key
#  default_sort_by :string
#  description     :text
#  published_at    :datetime
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Collection < ActiveRecord::Base
  has_many :collection_products
  has_many :products, through: :collection_products
end
