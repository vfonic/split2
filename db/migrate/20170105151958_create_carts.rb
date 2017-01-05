class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.text :note
      t.integer :original_total_price
      t.integer :total_price
      t.integer :total_weight

      t.timestamps null: false
    end
  end
end
