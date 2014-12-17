class RenameEventsUsersColumn < ActiveRecord::Migration
  def change
    rename_column :events_users_features, :events_users_id, :events_user_id
  end
end
