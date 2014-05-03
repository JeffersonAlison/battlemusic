class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :type
      t.references :tool
      t.references :user

      t.timestamps
    end
    add_index :rooms, :tool_id
    add_index :rooms, :user_id
  end
end
