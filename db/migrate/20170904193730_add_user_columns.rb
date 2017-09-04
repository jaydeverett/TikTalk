class AddUserColumns < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.integer :political_spectrum, default: nil
      t.string :personal_hero, default: nil
      t.string :personality, default: nil
    end
  end
end
