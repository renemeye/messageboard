class CreateDisplayEvents < ActiveRecord::Migration
  def change
    create_table :display_events do |t|
      t.integer :event_id
      t.integer :display_id

      t.timestamps
    end
    add_index :display_events, :event_id
    add_index :display_events, :display_id
  end
end
