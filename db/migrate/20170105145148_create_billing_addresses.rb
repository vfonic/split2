class CreateBillingAddresses < ActiveRecord::Migration
  def change
    create_table :billing_addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :company
      t.string :city
      t.string :province
      t.string :province_code
      t.string :zip
      t.string :country
      t.string :country_code
      t.string :phone
      t.integer :customer_id

      t.timestamps null: false
    end
    add_index :billing_addresses, :customer_id
  end
end
