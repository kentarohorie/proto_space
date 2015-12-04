class AddImageToThumbnails < ActiveRecord::Migration
  def change
    add_column :thumbnails, :image, :string
  end
end
