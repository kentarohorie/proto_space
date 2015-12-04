class AddPtoroRefToThumbnail < ActiveRecord::Migration
  def change
    add_column :thumbnails, :proto, :string
    add_column :thumbnails, :references, :string
  end
end
