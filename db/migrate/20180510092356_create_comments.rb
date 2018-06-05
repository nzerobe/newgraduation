class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :rob, foreign_key: true
      t.text :user_name
       t.text :name
      t.text :content
      t.integer :user_id 
      
      t.timestamps
    end
  end
end
