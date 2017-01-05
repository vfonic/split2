class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :barcode
      t.integer :compare_at_price
      t.boolean :incoming
      t.string :inventory_management
      t.string :inventory_policy
      t.integer :inventory_quantity
      t.datetime :next_incoming_date
      t.string :option1
      t.string :option2
      t.string :option3
      t.integer :price
      t.boolean :requires_shipping
      t.string :sku
      t.boolean :taxable
      t.string :title
      t.string :weight
      t.string :weight_unit
      t.integer :product_id

      t.timestamps null: false
    end
    add_index :variants, :product_id
  end
end
