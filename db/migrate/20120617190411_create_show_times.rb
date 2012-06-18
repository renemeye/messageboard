class CreateShowTimes < ActiveRecord::Migration
  def change
    create_table :show_times do |t|
      t.integer :priority
      t.time :end_time
      t.time :start_time
      t.integer :slide_set_id
      t.integer :display_id

      t.timestamps
    end
  end
end
