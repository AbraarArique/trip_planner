class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.date :date
      t.time :time
      t.string :duration
      t.string :place
      t.text :notes
      t.references :trip, index: true

      t.timestamps null: false
    end
  end
end
