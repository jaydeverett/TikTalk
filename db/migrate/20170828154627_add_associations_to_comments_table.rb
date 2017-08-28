class AddAssociationsToCommentsTable < ActiveRecord::Migration[5.1]
  def change
    change_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :article
    end
  end
end
