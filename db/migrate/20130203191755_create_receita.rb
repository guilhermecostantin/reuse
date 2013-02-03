class CreateReceita < ActiveRecord::Migration
  def change
    create_table :receita do |t|
      t.integer :id_post
      t.string :titulo

      t.timestamps
    end
  end
end
