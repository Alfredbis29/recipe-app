class AddUserRefToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipes, :user, null: false, foreign_keys: true 
  end
end
