class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :subtotal, precision: 12, scale: 3
      t.decimal :total,    precision: 12, scale: 3
      t.string :status

      t.timestamps
    end
  end
end
