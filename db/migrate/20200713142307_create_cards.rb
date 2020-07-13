class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :category
      t.string :omote
      t.string :ura
      t.integer :bdcolor
      t.timestamps
    end
  end
end
