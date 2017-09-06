class ChangeDefaultTotalWinsToZero < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.remove :total_wins
      t.integer :total_wins, default: 0, null: false
    end
  end
end
