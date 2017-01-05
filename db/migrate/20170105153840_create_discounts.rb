class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.string :code
      t.string :type

      t.timestamps null: false
    end
    add_index :discounts, :code
  end
end
