class CreateSlideOrders < ActiveRecord::Migration
  def change
    create_table :slide_orders do |t|
      t.integer :order
      t.references :slide
      t.references :slide_set

      t.timestamps
    end
    add_index :slide_orders, :slide_id
    add_index :slide_orders, :slide_set_id
  end
end
