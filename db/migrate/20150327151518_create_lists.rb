class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :content
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :lists, :users
    add_index :lists, [:user_id, :created_at]

  end
end
