class AddProtoRefToThumbnail < ActiveRecord::Migration
  def change
    add_reference :thumbnails, :proto, index: true, foreign_key: true
  end
end
