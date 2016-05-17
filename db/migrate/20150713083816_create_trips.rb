class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name, null: false
      t.date :start
      t.date :end
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
