class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.text :name
      t.float :calorie
      t.float :protein
      t.float :carb
      t.float :fat
      t.float :sodium
      t.float :sugar
      t.float :gram

      t.timestamps
    end
  end
end
