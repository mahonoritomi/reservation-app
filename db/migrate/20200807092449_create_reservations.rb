class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.datetime :start_time,    null: false
      t.datetime :end_time,      null: false
      t.text :content,             null: false
      t.integer :price,            null: false
      t.string :family_name,       null: false
      t.string :first_name,        null: false
      t.string :phone_number,      null: false
      t.string :email,             null: false
      t.timestamps
    end
  end
end
