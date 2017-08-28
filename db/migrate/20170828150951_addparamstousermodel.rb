class Addparamstousermodel < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
    end      
  end
end
