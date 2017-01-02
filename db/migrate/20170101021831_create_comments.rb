class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :comment_entry
      t.integer :ad_id
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
