class CreateRendezvous < ActiveRecord::Migration[5.2]
  def change
    create_table :rendezvous do |t|
      t.datetime :date
      t.integer :time
      t.string :location
      t.integer :user_id
      t.integer :clothing_options_id
      t.integer :date_type_id

      t.timestamps
    end
  end
end
