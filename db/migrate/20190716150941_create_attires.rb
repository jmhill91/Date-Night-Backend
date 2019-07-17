class CreateAttires < ActiveRecord::Migration[5.2]
  def change
    create_table :attires do |t|
      t.string :name

      t.timestamps
    end
  end
end
