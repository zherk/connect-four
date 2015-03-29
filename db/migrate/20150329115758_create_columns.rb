class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.integer :board_id
      t.string :column_name
      t.integer :order

      t.timestamps
    end
  end
end
