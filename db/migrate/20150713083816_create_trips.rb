class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name, null: false
      t.date :start_date
      t.date :end_date
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
