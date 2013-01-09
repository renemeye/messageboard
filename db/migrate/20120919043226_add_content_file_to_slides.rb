class AddContentFileToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :content_file, :string
    rename_column :slides, :origninal_file, :original_file
  end
  
end
