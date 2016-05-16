class CreatePinNotes < ActiveRecord::Migration
  def change
    create_table :pin_notes do |t|
      t.text :note, null: false
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
