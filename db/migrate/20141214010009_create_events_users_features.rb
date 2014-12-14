class CreateEventsUsersFeatures < ActiveRecord::Migration
  def change 
    create_table :events_users_features do |t|
      t.integer :events_users_id, null:false
      t.integer :features_id, null:false 
      t.timestamps
    end  
  end
end
