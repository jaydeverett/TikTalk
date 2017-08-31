class AddAssociationsToResultstable < ActiveRecord::Migration[5.1]
  def change
    change_table :results do |t|
      t.belongs_to :article
  end
end
