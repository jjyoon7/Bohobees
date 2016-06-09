class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :visited, :text
    add_column :users, :interest, :text
    add_column :users, :future_visit, :text
  end
end
