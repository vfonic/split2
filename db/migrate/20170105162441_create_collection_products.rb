class CreateCollectionProducts < ActiveRecord::Migration
  def change
    create_table :collection_products do |t|
      t.integer :collection_id
      t.integer :product_id
    end
    add_index :collection_products, :collection_id
    add_index :collection_products, :product_id
  end
end
