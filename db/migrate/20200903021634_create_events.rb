class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :date
      t.string :location
      t.integer :spaces
      t.integer :tutor_id

      t.timestamps
    end
  end
end
