class AddAttributesToDisplay < ActiveRecord::Migration
  def change
    add_column :displays, :title, :string

    add_column :displays, :image, :string

  end
end
