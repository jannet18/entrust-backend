class CreateVariants < ActiveRecord::Migration[7.1]
  def change
    create_table :variants do |t|
      t.references :product, null: false, foreign_key: true
      t.string :image_url
      t.string :color
      t.string :size
      t.string :weight
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
