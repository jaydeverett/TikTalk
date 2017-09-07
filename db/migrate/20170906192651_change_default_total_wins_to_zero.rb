class ChangeDefaultTotalWinsToZero < ActiveRecord::Migration[5.1]
  def up
    change_table :users do |t|
      t.remove :total_wins
      t.integer :total_wins, default: 0, null: false
    end
    def down
    end
  end
end
