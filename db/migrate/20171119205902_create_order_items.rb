class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :total_price, precision: 12, scale: 2
      t.decimal :unit_price,  precision: 12, scale: 2
      t.references :item,  foreign_key: true
      t.references :order, foreign_key: true
      t.references :user,  foreign_key: true

      t.timestamps
    end
  end
end
