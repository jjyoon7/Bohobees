class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.references :user, index: true, foreign_key: true
      t.string :status
      t.text :message
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
