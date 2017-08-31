class DropResultsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :results
  end
end
