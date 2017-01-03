class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.float :price
      t.text :description
      t.string :image
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
