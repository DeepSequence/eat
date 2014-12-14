class CreateFeaturesRestaurants < ActiveRecord::Migration
  def change
   create_table :features_restaurants do |t|
      t.integer :feature_id, null:false
      t.integer :restaurant_id, null:false
      t.boolean :value, default:false
      t.timestamps
   end   
  end
end
