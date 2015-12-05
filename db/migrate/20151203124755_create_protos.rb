class CreateProtos < ActiveRecord::Migration
  def change
    create_table :protos do |t|
      t.string  :title
      t.string :catchcopy
      t.text :concept
      t.integer :user_id

      t.timestamps
    end
  end
end
