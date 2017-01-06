class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :author
      t.string :title
      t.string :handle
      t.text :body_html
      t.datetime :published_at
      t.string :template_suffix

      t.timestamps null: false
    end
    add_index :pages, :handle
  end
end
