class AddNameToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :name, :string
  end
end
