class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :events, :Streetname, :streetname
  end
end
