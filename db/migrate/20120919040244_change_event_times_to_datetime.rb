class ChangeEventTimesToDatetime < ActiveRecord::Migration
  def up
    change_table :events do |t|
      t.change :start_time, :datetime
      t.change :end_time, :datetime
    end
  end

  def down
    change_table :events do |t|
      t.change :start_time, :time
      t.change :end_time, :time
    end
  end
end
