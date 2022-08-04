class CreatePublicRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :public_recipes do |t|
      t.references :recipe, null: false, foreign_key: {to_table: 'recipes'}, index: true
      t.references :food, null: false, foreign_key: {to_table: 'foods'}, index: true
      t.integer :quantity, default: 0
      t.timestamps
    end
  end
end
