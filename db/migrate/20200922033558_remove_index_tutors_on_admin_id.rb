class RemoveIndexTutorsOnAdminId < ActiveRecord::Migration[6.0]
  def change
    remove_index :tutors, name: "index_tutors_on_admin_id"
  end
end
