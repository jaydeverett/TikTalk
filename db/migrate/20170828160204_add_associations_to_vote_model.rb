class AddAssociationsToVoteModel < ActiveRecord::Migration[5.1]
  def change
    change_table :votes do |t|
      t.belongs_to :user
      t.belongs_to :comment
    end
  end
end
