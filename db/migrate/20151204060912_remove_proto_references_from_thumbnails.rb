class RemoveProtoReferencesFromThumbnails < ActiveRecord::Migration
  def change
    remove_column :thumbnails, :proto, :string
    remove_column :thumbnails, :references, :string
  end
end
