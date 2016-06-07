class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :photo, :string
    add_column :users, :city, :string
    add_column :users, :street_address, :string
  end
end
