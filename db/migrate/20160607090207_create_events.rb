class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.references :user, index: true, foreign_key: true
      t.integer :guest
      t.string :meal
      t.string :title
      t.string :place
      t.text :description

      t.timestamps null: false
    end
  end
end
