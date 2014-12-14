class ModifyEvents < ActiveRecord::Migration
  def change
    change_column :events, :restaurant_id, :integer, null: true
  end
end
