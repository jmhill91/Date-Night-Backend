class ChangePhoneToString < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :phone_number, :string
    change_column :users, :significant_other_phone,
    :string
  end
end
