class AddIconToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :icon_url, :string
  end
end
