class AddIndexToKeyToAssets < ActiveRecord::Migration
  def change
    add_index :assets, :key
  end
end
