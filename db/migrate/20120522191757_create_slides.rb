class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :picture_file
      t.string :origninal_file
      t.string :title

      t.timestamps
    end
  end
end
