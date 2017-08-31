class AddDefaultArchivedAsFalse < ActiveRecord::Migration[5.1]
  def change
    change_table :articles do |t|
      t.remove :archived
      t.boolean :archived, default: false
    end
  end
end
