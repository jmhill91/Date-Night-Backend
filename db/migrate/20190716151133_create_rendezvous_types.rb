class CreateRendezvousTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :rendezvous_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
