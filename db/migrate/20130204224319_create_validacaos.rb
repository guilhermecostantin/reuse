class CreateValidacoes < ActiveRecord::Migration
  def change
    create_table :validacoes do |t|
      t.float :entrada1
      t.float :entrada2
      t.float :entrada3
      t.float :entrada4
      t.float :entrada5
      t.integer :target

      t.timestamps
    end
  end
end
