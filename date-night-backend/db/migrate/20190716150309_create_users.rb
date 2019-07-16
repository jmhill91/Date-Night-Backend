class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.integer :phone_number
      t.string :email
      t.integer :significant_other_phone

      t.timestamps
    end
  end
end
