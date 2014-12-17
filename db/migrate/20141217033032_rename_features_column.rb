class RenameFeaturesColumn < ActiveRecord::Migration
  def change
    rename_column :events_users_features, :features_id, :feature_id
  end
end
