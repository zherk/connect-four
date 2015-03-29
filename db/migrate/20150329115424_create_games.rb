class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :next_turn
      t.string :status

      t.timestamps
    end
  end
end
