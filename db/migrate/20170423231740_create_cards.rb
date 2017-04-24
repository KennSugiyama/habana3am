class CreateCards < ActiveRecord::Migration
  def change
    creat_table :cards do |t|
      t.string  :title,  :null => false
      t.string  :fortune_1, :null => false
      t.string  :fortune_2, :null => false
      t.string  :fortune_3, :null => false
      t.integer :points, :null => false
      t.integer :multiplier,  :null => false

      t.timestamps
    end
  end
end
