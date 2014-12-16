require_relative '../models/restaurant'
require_relative '../models/feature'

Feature.create(
  [
    { name: "Sandwiches"},
    { name: "Pizza"},
    { name: "American(Traditional)"},
    { name: "Chinese"},
    { name: "Burgers"},
    { name: "Sandwiches"},
    { name: "Delis"},
    { name: "Mexican"},
    { name: "Italian"},
    { name: "Seafood"},
    { name: "Japanese"},
    { name: "Salad"},
    { name: "Sushi"},
    { name: "Thai"},
    { name: "Indian"},
    { name: "Mediterranean"},
    { name: "Korean"},
    { name: "Asian Fusion"},
    { name: "soup"},
    { name: "vegetarian"},
    { name: "vegan"},
    { name: "ramen"},
    { name: "good coffee"},
    { name: "good dessert"}

  ]
)
#this should somehouse be turned into a pop up window with a checkmark radio buttons
Restaurant.create(
  [
    { name: 'G Street Food', address: '1120 19th Street Northwest, Washington, DC 20036' ,url:'http://www.gstreetfood.com' , phone_number:'(202)327-2252'},

    { name: 'Sweetgreen', address: 'P Street Northwest, Washington, DC 20005,' ,url:'http://www.sweetgreen.com' , phone_number: '(202) 507-8357'},

    { name: 'DC Thai', address: '1018 Vermont Ave Northwest, Washington, DC 20005' ,url:'none' , phone_number:'(202) 639-0303'},

    { name: 'Chop’t', address: '1629 K Street Northwest, Washington, DC 20005' ,url:'http://www.choptsalad.com' , phone_number:'(202)639-8999'},

    { name: 'Zoup!', address: '1101 Vermont Avenue Northwest, Washington, DC 20005' ,url:'http://www.zoup.com' , phone_number:'(202)682-9687'},

    { name: 'Phillips Cafe', address: '1451 L Street  Northwest #1, Washington, DC 20005' ,url:'http://www.wholefoodsmarket.com' , phone_number:'(202)331-3213'},

    { name: 'Lincoln', address: '1110 Vermont Avenue Northwest, Washington, DC 20005' ,url:'http://www.cafephillips.com' , phone_number:'(202)331-3213'},

    { name: 'Au Bon Pain', address: '801 17th Street Northwest, Washington, DC 20005' ,url:'http://www.getcosi.com' , phone_number:'(202)296-1109'},

    { name: 'Georgia Browns', address: '950 15th Street Northwest, Washington, DC 20005' ,url:'http://www.gbrowns.com' , phone_number:'(202)393-4499'},

    { name: 'Woodward Table', address: '1426 H Street Northwest, Washington, DC 20005' ,url:'http://www.woodwardtable.com' , phone_number:'(202)639-8999'},

    { name: 'Mio', address: '1110 Vermont Avenue Northwest, Washington, DC 20005' ,url:'http://www.miorestaurant.com' , phone_number:'(202) 955-0075'},

    { name: 'Casa Blanca Restaurant', address: '1014 Vermont Avenue Northwest, Washington, DC 20005' ,url:'none' , phone_number:' (202) 393-4430'},

    { name: 'Pedro & Vinny’s Burrito Cart', address: '1500 K Street  Northwest, Washington, DC 20005' ,url:'http://www.pedroandvinnys.com' , phone_number:'(571) 237-1875'},

    { name: 'Bean and Bite', address: '1501 K Street 1152 15th StreetNorthwest, Washington, DC 20005' ,url:'none' , phone_number:'(202)296-3078'},

    { name: 'Pizza Autentica', address: '1051 15th Street Northwest, Washington, DC 20005' ,url:'http://www.getcosi.com' , phone_number:'(202)898-1480'},

    { name: 'Subway', address: '1115 15th Street Northwest, Washington, DC 20005' ,url:'http://www.subway.com' , phone_number:'(202)898-6393'},

    { name: 'Stand N Snack', address: '1133 15th Street Northwest, Washington, DC 20005' ,url:'http://www.getcosi.com' , phone_number:'(202)452-0691'},

    { name: 'Cosi', address: '1501 K Street Northwest, Washington, DC 20005' ,url:'http://www.getcosi.com' , phone_number:'(202)639-8999'}

  ]
)

FeaturesRestaurant.create([
  {restaurant_id: 1 , feature_id: 1},
  {restaurant_id: 1, feature_id: 5},
  {restaurant_id: 1, feature_id: 12},
  {restaurant_id: 1, feature_id: 19},
  {restaurant_id: 1, feature_id: 21},
  {restaurant_id: 1, feature_id: 16},
  {restaurant_id: 2, feature_id: 12},
  {restaurant_id: 2, feature_id: 16},
  {restaurant_id: 3, feature_id: 14}, 
  {restaurant_id: 4, feature_id: 1},
  {restaurant_id: 4, feature_id: 12},
  {restaurant_id: 4, feature_id: 21},
  {restaurant_id: 4, feature_id: 22},
  {restaurant_id: 5, feature_id: 1},
  {restaurant_id: 5, feature_id: 12},
  {restaurant_id: 5, feature_id: 20},
  {restaurant_id: 6, feature_id: 1},
  {restaurant_id: 6, feature_id: 24},
  {restaurant_id: 6, feature_id: 20},
  {restaurant_id: 6, feature_id: 12},
  {restaurant_id: 7, feature_id: 1},
  {restaurant_id: 7, feature_id: 3},
  {restaurant_id: 7, feature_id: 25},
  {restaurant_id: 7, feature_id: 12},
  {restaurant_id: 8, feature_id: 1},
  {restaurant_id: 8, feature_id: 12},
  {restaurant_id: 8, feature_id: 20},
  {restaurant_id: 9, feature_id: 3},
  {restaurant_id: 9, feature_id: 20},
  {restaurant_id: 10, feature_id: 1},
  {restaurant_id: 10, feature_id: 12},
  {restaurant_id: 10, feature_id: 20},
  {restaurant_id: 10, feature_id: 25},
  {restaurant_id: 11, feature_id: 26},
  {restaurant_id: 13, feature_id: 8},
  {restaurant_id: 14, feature_id: 1},
  {restaurant_id: 14, feature_id: 12},
  {restaurant_id: 14, feature_id: 24},
  {restaurant_id: 14, feature_id: 25},
  {restaurant_id: 15, feature_id: 2},
  {restaurant_id: 16, feature_id: 1},
  {restaurant_id: 17, feature_id: 1},
  {restaurant_id: 18, feature_id: 1},
  {restaurant_id: 18, feature_id: 1},
])





