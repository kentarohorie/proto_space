class RemoveHogeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :hoge, :string
  end
end
