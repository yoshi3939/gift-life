class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.integer :status_id, null: false
      t.string :name,       null: false
      t.string :partner
      t.date :event_date
      t.string :event
      t.string :shop
      t.integer :price
      t.text :memo
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
