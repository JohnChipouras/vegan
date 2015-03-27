class AddPictureToList < ActiveRecord::Migration
  def change
    add_column :lists, :picture, :string
  end
end
