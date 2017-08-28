class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :domain
      t.string :url
      t.datetime :time
      t.boolean :archived
      t.timestamps
    end
  end
end
