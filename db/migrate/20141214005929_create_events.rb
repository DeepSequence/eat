class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name_of_event, null:false
      t.datetime :event_date 
      t.integer :restaurant_id, null:false
      t.timestamps
    end  
  end
end
