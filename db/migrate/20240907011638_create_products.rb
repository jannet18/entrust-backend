class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :size
      t.string :color
      t.integer :quantity
      t.string :image_url
      t.integer :listing_id

      t.timestamps
    end
  end
end
