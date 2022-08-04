class CreatePublicReciples < ActiveRecord::Migration[7.0]
  def change
    create_table :public_reciples do |t|

      t.timestamps
    end
  end
end
