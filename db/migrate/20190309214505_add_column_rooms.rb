class AddColumnRooms < ActiveRecord::Migration[5.2]
  def up
    add_column :rooms, :detail, :string
  end

  def down
    add_column :rooms, :detail, :string
  end
end
