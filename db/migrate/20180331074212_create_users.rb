class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.string :password_digest
      t.text :comment  
      t.text :image
     
      

      t.timestamps
    end
  end
end
