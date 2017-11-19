class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string  :name
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
