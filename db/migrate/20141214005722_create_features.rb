class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name, null: false, unique: true
      t.timestamps
    end
  end
end
  
