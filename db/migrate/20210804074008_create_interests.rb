class CreateInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :interests do |t|
      t.string :name,       null: false
      t.integer :price
      t.text :memo
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
