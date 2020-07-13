class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :omote, null:false
      t.string :ura, null:false

      t.timestamps
    end
  end
end
