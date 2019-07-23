class ChangeClothingOption < ActiveRecord::Migration[5.2]
  def change
    rename_column :rendezvous, :clothing_options_id, :attire_id
    rename_column :rendezvous, :date_type_id, :rendezvous_type_id
    remove_column :rendezvous, :time
    add_column :rendezvous, :time, :datetime
  end
end
