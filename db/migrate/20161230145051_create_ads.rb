class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.text :description
      t.text :contact_info
      t.integer :category_id

      t.timestamps
    end
  end
end
