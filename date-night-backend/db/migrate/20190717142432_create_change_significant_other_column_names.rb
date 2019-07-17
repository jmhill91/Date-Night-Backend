class CreateChangeSignificantOtherColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :significant_others, :user_id, :follower_id
    add_column :significant_others, :followee_id, :integer
  end
end
