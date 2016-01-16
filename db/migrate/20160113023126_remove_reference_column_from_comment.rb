class RemoveReferenceColumnFromComment < ActiveRecord::Migration
  def change
    remove_column :comments, :proto_id_id, :reference
  end
end
