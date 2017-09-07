class AddDefaultArchivedAsFalse < ActiveRecord::Migration[5.1]
  def up
    change_table :articles do |t|
      t.remove :archived
      t.boolean :archived, default: false
    end
    def down
    end
  end
end
