class CreateRedes < ActiveRecord::Migration
  def change
    create_table :redes do |t|
      t.float :peso1
      t.float :peso2
      t.float :peso3
      t.float :peso4
      t.float :peso5
      t.integer :epocas

      t.timestamps
    end
  end
end
