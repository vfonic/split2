class ChangeTitleToNameInThemes < ActiveRecord::Migration
  def change
    rename_column :themes, :title, :name
  end
end
