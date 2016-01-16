class AddProtoidToLikes < ActiveRecord::Migration
  def change
    remove_column :likes, :proto_id, :integer
    add_reference :likes, :proto, index: true, foreign_key: true
  end
end
