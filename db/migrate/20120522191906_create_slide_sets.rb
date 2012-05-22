class CreateSlideSets < ActiveRecord::Migration
  def change
    create_table :slide_sets do |t|
      t.boolean :random

      t.timestamps
    end
  end
end
