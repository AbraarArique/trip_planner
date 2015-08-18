class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.integer :lat, null: false
      t.integer :long, null: false
      t.text :description
      t.string :url
      t.references :trip_plan, index: true

      t.timestamps null: false
    end
  end
end