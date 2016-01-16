class AddUseridToLikes < ActiveRecord::Migration
  def change
    remove_column :likes, :user_id, :integer
    add_reference :likes, :user, index: true, foreign_key: true
  end
end
