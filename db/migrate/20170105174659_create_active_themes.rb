class CreateActiveThemes < ActiveRecord::Migration
  def change
    create_table :active_themes do |t|
      t.integer :theme_id

      t.timestamps null: false
    end
    add_index :active_themes, :theme_id
  end
end
