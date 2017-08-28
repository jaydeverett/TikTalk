class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.boolean :upvoted
      t.boolean :downvoted
      t.timestamps
    end
  end
end
