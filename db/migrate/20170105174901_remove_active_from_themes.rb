class RemoveActiveFromThemes < ActiveRecord::Migration
  def change
    remove_column :themes, :active
  end
end
