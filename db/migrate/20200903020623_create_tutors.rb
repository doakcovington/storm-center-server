class CreateTutors < ActiveRecord::Migration[6.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :speciality
      t.string :phonenumber
      t.string :email

      t.timestamps
    end
  end
end
