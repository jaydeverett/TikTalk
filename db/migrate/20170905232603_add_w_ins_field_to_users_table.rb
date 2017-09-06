class AddWInsFieldToUsersTable < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.integer :total_wins
    end
  end
end
