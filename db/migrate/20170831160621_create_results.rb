class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :article_name
      t.string :article_url
      t.string :winner
      t.text :top_comments, array: true, default: []
      t.integer :number_of_comments
      t.timestamps
    end
  end
end
