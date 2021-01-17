class AddVisibleToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :visible, :boolean
  end
end
