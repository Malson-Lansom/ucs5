class CreateBdcs < ActiveRecord::Migration[6.0]
  def change
    create_table :bdcs do |t|
      t.integer :question,  default: 0
      t.references :group,  foreign_key: true
      t.references :user,   foreign_key: true
      t.references :panel,  foreign_key: true
      t.timestamps
    end
  end
end
