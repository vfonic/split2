# == Schema Information
#
# Table name: collection_products
#
#  id            :integer          not null, primary key
#  collection_id :integer
#  product_id    :integer
#
# Indexes
#
#  index_collection_products_on_collection_id  (collection_id)
#  index_collection_products_on_product_id     (product_id)
#

class CollectionProduct < ActiveRecord::Base
  belongs_to :collection
  belongs_to :product
end
