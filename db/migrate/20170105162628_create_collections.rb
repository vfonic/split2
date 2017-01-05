class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :default_sort_by
      t.text :description
      t.datetime :published_at
      t.string :title

      t.timestamps null: false
    end
  end
end
