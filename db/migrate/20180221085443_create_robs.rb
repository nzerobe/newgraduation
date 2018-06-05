class CreateRobs < ActiveRecord::Migration[5.1]
  def change
    create_table :robs do |t|
      t.string :title
      t.text :content
      t.text :image
       t.text :windows
       t.text :mac
       t.text :linux
       t.text :android
       t.text :iphone
       t.text :hardware
        t.text :software
       
      
       t.integer :comment_id
       t.integer :user_id
        t.integer :category_id
       
      t.timestamps
    end
  end
end
