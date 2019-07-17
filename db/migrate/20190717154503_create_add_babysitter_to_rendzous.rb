class CreateAddBabysitterToRendzous < ActiveRecord::Migration[5.2]
  def change
    add_column :rendezvous, :babysitter, :boolean
  end
end
