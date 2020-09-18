class AddAdminToTutors < ActiveRecord::Migration[6.0]
  def change
    add_reference :tutors, :admin, foreign_key: true
  end
end
