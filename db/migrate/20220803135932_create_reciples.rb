class CreateReciples < ActiveRecord::Migration[7.0]
  def change
    create_table :reciples do |t|

      t.timestamps
    end
  end
end
