class AddProtoidToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :proto, index: true, foreign_key: true
  end
end
