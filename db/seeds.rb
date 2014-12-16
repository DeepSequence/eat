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





