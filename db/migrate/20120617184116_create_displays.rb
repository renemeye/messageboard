class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.string :name
      t.string :location
      t.integer :slide_id

      t.timestamps
    end
  end
end
