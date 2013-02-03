class CreateCookBooks < ActiveRecord::Migration
  def change
    create_table :cook_books do |t|
      t.string :nome
      t.string :tema

      t.timestamps
    end
  end
end
