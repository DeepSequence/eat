#Event class has many users though the join table events_users and one restaurant will be chosen for the event.
class Event < ActiveRecord::Base
 has_many :events_users
 has_many :users, through: :events_users
 has_many :events_users_features, through: :events_users
 has_many :features, through: :events_users_features
 belongs_to :restaurant

def self.live
  where(cancelled: false)
end


#setting the cancelled column to true
def cancel
  self.cancelled=true
  self.save
end

 def choose_restaurant
  #gets all restaurants from db
  restaurants = Restaurant.all
  #initialize empty hash to keep scores
  restaurant_scores = {}
  #loop over all restaurants
  restaurants.each do |restaurant|
    #reset score to zero for each restaurant
    score = 0
    #loop over all of the features desired by people attending this event
    features.each do |feature|
      #add one to score for each matching feature
      if restaurant.features.exists?(feature.id)
        score += 1
      end
    end
    #set the score for this restaurant into the hash
    restaurant_scores[restaurant.id] = score
  end
   #figure out the highest score
   high_score = restaurant_scores.values.max
   #get the ids of the restaurants that had the highest score
   ids = restaurant_scores.select {|id, score| score == high_score}.keys
   #pick a random restaurant id out of high scorers and set event restaurant
   #to that id
   self.restaurant_id = ids.sample
   #save the updated event
   save
 end

end
