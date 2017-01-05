class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :billing_address_id
      t.datetime :cancelled_at
      t.integer :customer_id
      t.string :financial_status
      t.string :fulfillment_status
      t.text :note
      t.integer :order_number
      t.integer :shipping_address_id
      t.integer :shipping_price
      t.integer :subtotal_price

      t.timestamps null: false
    end
    add_index :orders, :billing_address_id
    add_index :orders, :customer_id
    add_index :orders, :order_number
    add_index :orders, :shipping_address_id
  end
end
