class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|

      t.string :name
      t.text :explain
      t.integer :user_id

      t.timestamps
    end
  end
end
