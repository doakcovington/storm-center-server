class AddAdminToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :admin, foreign_key: true
  end
end
