class AddDetailToProtos < ActiveRecord::Migration
  def change
    add_column :protos, :title, :string
    add_column :protos, :catchcopy, :string
    add_column :protos, :concept, :text
    add_column :protos, :user_id, :integer
  end
end
