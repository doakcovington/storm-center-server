class AddWaitlistToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :waitlist, :integer
  end
end
