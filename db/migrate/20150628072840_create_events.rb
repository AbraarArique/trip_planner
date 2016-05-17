class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.date :date, null: false
      t.time :time, null: false
      t.string :duration, null: false
      t.text :notes
      t.references :trip, index: true

      t.timestamps null: false
    end
  end
end
