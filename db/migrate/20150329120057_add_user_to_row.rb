class AddUserToRow < ActiveRecord::Migration
  def change
    add_column :rows, :user_id, :integer
  end
end
