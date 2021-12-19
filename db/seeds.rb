listings = {
    "Benirus Manor" => {
        :kind => "Home",
        :bedrooms => 5,
        :bathrooms => 3.5,
        :price => 1500000,
        :description => "The recently renovated Benirus Manor still has much of its original charm.  From the original woodwork in the dining room, to the private study in the master bedroom you will find charm in every nook and cranny.",
        :street => "1717 Cheydinhall Street",
        :city => "Cleveland",
        :state => "Ohio",
        :postal => 44101,
    },
    "Arborwatch" => {
        :kind => "Condominium",
        :bedrooms => 2,
        :bathrooms => 2,
        :price => 1000000,
        :description => "Sporting large rooms and an impressive square footage spread over two floors, you will find plenty of room to spread your legs about the interior.  There is no basement or attic space but there is plenty of storage space in the large closets.",
        :street => "2204 Frostlake Ave",
        :city => "Seattle",
        :state => "Washington",
        :postal => 98101,
    },
    "Rosethorn Hall" => {
        :kind => "Home",
        :bedrooms => 5,
        :bathrooms => 3,
        :price => 905000,
        :description => "Sitting on the outskirts of downtown Boise you could not ask for a better place to view the city.  Within walking range of many shops and restaunts you will find plenty of opportunities to explore.  Waking up in the master bedroom on the third floor you will be greeted by the rising sun, in the evening you will witness the clouds rolling across the great plains.",
        :street => "4709 Bellside Circle",
        :city => "Boise",
        :state => "Idaho",
        :postal => 83701,
    },
    "Honeyside" => {
        :kind => "Condominium",
        :bedrooms => 2,
        :bathrooms => 1.5,
        :price => 405500,
        :description => "This charming condo is placed right next to a creek that you can hear from your balcony while you study or enjoy a meal.  Close by are several stores and restaraunts in the Wichitas old town.  Sporting a small garage as well as street parking, and a basement for extra storage and laundry.",
        :street => "16 Savannah Street",
        :city => "Wichita",
        :state => "Kansas",
        :postal => 67052,
    },
    "Proudspire Manor" => {
        :kind => "Home",
        :bedrooms => 6,
        :bathrooms => 4.5,
        :price => 17500000,
        :description => "Boasting a rich history of early settler days this manor has stood since the earliest days of our country.  Enjoy the several fireplaces featured in the dining hall, study, kitchen, and master bedroom.  Take advantage of the extra activity space located behind the bookshelf, just make sure to be carefull when setting up your passcode.",
        :street => "13 Proudspire Lane",
        :city => "Buffalo",
        :state => "New York",
        :postal => 14201,
    },
    "Breezehome" => {
        :kind => "Home",
        :bedrooms => 4,
        :bathrooms => 2.5,
        :price => 10000000,
        :description => "One could not ask for a better home to host parties or raise a large family.  Say goodbye to commutes as this home is located within walking distance to several of the local schools and the university.",
        :street => "21 Jump Street",
        :city => "Fresno",
        :state => "California",
        :postal => 93650,
    },
}

listings.each do |name, listing_hash|
    l = Listing.new
    l.name = name
    listing_hash.each do |attribute, value|
        l[attribute] = value
    end
    l.save
end
