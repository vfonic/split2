class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :compare_at_price_max
      t.integer :compare_at_price_min
      t.text :description
      t.string :title
      t.string :vendor

      t.timestamps null: false
    end
  end
end
