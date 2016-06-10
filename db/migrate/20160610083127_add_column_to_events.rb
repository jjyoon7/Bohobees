class AddColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :Streetname, :string
  end
end
