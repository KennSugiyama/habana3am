class CreateGames < ActiveRecord::Migration
  def change
    creat_table :games do |t|
      t.integer :user_id,  :null => false
      t.integer :card_id, :null => false

      t.timestamps
    end
  end
end
