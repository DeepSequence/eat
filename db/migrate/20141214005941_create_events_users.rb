class CreateEventsUsers < ActiveRecord::Migration
  def change
    create_table :events_users do |t|
      t.integer :user_id, null:false
      t.integer :event_id, null:false
      t.boolean :attending
      t.boolean :selected_preferences
      t.timestamps
    end  
  end
end
