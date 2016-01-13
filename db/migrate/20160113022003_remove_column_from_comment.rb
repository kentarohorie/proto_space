class RemoveColumnFromComment < ActiveRecord::Migration
  def change
    remove_column :comments, :proto_id, :integer
  end
end
