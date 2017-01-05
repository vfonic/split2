class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.boolean :active, default: false
      t.string :title

      t.timestamps null: false
    end
    add_index :themes, :active
  end
end
