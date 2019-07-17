class CreateSignificantOthers < ActiveRecord::Migration[5.2]
  def change
    create_table :significant_others do |t|
      t.integer :user_id
      t.integer :user_id

      t.timestamps
    end
  end
end
