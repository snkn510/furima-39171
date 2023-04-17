class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.integer :condition_id
      t.integer :shipping_charge_id
      t.integer :region_id
      t.integer :days_to_ship_id
      t.integer :price
      t.references :user
      t.timestamps
    end
  end
end


