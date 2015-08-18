class CreateTripPlans < ActiveRecord::Migration
  def change
    create_table :trip_plans do |t|
      t.string :title, null: false
      t.integer :date, null: false
      t.string :time, null: false
      t.string :duration, null: false
      t.text :notes
      t.references :day, index: true

      t.timestamps null: false
    end
  end
end