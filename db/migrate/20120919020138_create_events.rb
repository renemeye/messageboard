class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.time :start_time
      t.time :end_time
      t.string :show_flags

      t.timestamps
    end
  end
end
