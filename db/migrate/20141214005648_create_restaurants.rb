class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address
      t.string :url
      t.string :phone_number
      t.timestamps
    end  
  end
end

 
