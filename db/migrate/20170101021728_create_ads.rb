class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :author
      t.text :content
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
