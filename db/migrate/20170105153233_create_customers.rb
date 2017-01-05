class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.boolean :accepts_marketing
      t.integer :default_address_id
      t.string :email
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
    add_index :customers, :default_address_id
    add_index :customers, :email
  end
end
