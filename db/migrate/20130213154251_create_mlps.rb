class CreateMlps < ActiveRecord::Migration
  def change
    create_table :mlps do |t|
      t.float :entrada1
      t.float :entrada2
      t.float :entrada3
      t.float :entrada4
      t.integer :target1
      t.integer :target2
      t.integer :target3

      t.timestamps
    end
  end
end
