class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :theme_id
      t.string :content_type
      t.string :public_url
      t.integer :size
      t.string :key

      t.timestamps null: false
    end
    add_index :assets, :theme_id
  end
end
