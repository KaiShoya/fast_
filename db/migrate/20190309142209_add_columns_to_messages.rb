class AddColumnsToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :user, foreign_key: true
    add_column :messages, :room_id, :integer
    add_index :messages, :room_id
  end
end
