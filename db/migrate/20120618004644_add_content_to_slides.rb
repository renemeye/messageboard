class AddContentToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :content, :string

  end
end
