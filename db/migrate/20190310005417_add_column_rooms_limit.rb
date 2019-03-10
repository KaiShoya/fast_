class AddColumnRoomsLimit < ActiveRecord::Migration[5.2]
  def up
    add_column :rooms, :limit, :timestamp
  end

  def down
    add_column :rooms, :limit, :timestamp
  end
end
