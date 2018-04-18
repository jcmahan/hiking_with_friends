# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

users = [{
    name: "James Mahan",
    email: "jcmahan@gmail.com",
    password: "v!king",
    hometown: "Los Angeles",
    level: "expert",
    profile_picture: File.new(File.join(Rails.root, "app", "assets", "images", "seedimages", "me.jpg")),
    contact: "917-408-3515",
    facebook_url: "https://www.facebook.com/james.mahan",
    instagram_url: "https://www.instagram.com/jcmahan73",
    admin: "true"
},
    {
    name: "James Smith",
    email: "jsmith@fake.com",
    password: "cat",
    hometown: "LA",
    level: "novice",
    profile_picture: File.new(File.join(Rails.root, "app", "assets", "images", "seedimages", "beach.jpg")),
    contact: "2125551212",
    facebook_url: "www.facebook.com/jsmithBS",
    instagram_url: "www.instagram.com./jsmithBS",
    admin: "true"
}, {
    name: "Jon Johnson",
    email: "jjohnson@bs.com",
    password: "cat",
    hometown: "NYC",
    level: "intermediate",
    profile_picture: File.new(File.join(Rails.root, "app", "assets", "images", "seedimages", "onaboat.jpg")),
    contact: "9175551212",
    facebook_url: "www.facebook.com/jjohnsonBS",
    instagram_url: "www.instagram.com/jjohnsonBS",
    admin: "false"
}, {
    name: "Mike Miller",
    email: "mmiller@completebs.com",
    password: "cat",
    hometown: "Chi-town",
    level: "expert",
    profile_picture: File.new(File.join(Rails.root, "app", "assets", "images", "seedimages", "clouds.jpg")),
    contact: "3235551212",
    facebook_url: "www.facebook.com/mmillerBS",
    instagram_url: "www.instagram.com//mmillerBS",
    admin: "false"
}]

User.create users

Location.destroy_all

locations = [
{
    state: "CA",
    location_name: "downtown Los Angeles", 
    location_address: "1234 Main St, Los Angeles, CA 90017",
    nearest_city: "Los Angeles",
    google_map_link: "https://goo.gl/maps/BcmmgY7hifv",
    level: "novice",
    length: "2.1 km",
    main_picture: File.new(File.join(Rails.root, "app", "assets", "images", "seedimages", "LAWinter_2016.jpg")),
}, {
    state: "CA",
    location_name: "downtown San Fran",
    location_address: "5678 Main St, San Francisco, CA 94102",
    nearest_city: "San Francisco, CA",
    google_map_link: "https://goo.gl/maps/4kR6DwKMe3G2",
    level: "intermediate",
    length: "3.4 km",
    main_picture: File.new(File.join(Rails.root, "app", "assets", "images", "seedimages", "SF-GG.jpg")),
}, {
    state: "OR",
    location_name: "uptown Bend",
    location_address: "9123 Main St, Bend, OR, 97703",
    nearest_city: "Bend, OR",
    google_map_link: "https://goo.gl/maps/rRdrfruBd3y",
    level: "expert",
    length: "10.5 km",
    main_picture: File.new(File.join(Rails.root, "app", "assets", "images", "seedimages", "Bend_Oregon.jpg")),
}]
Location.create locations

Hike.destroy_all

h = User.create(name: "Daniel Miles", email: "damiles@me.com", password: "dog", hometown: "NYC", level: "intermediate",)
bc = Location.create(state: "CA", location_name: "Beachwood Canyon", location_address: "2795 Woodshire Dr, Los Angeles, CA 90068", nearest_city: "Los Angeles, CA", google_map_link: "https://goo.gl/maps/3foW715qkF52", level: "intermediate", length: "3.4 km", main_picture: File.new(File.join(Rails.root, "app", "assets", "images", "seedimages", "beechwood.jpg")))
Hike.create(name: "Beechwood Canyon", date: "05/05/2018", user: h, location: bc)

i = User.create(name: "JR Hillis", email: "juniorhillis@me.com", password: "diving02", hometown: "Kokomo, IN", level: "novice",)
btn = Location.create(state: "CA", location_name: "Bridge to Nowhere", location_address: "Camp Bonita Road, San Gabriel Mountains National Monument, Azusa, CA 91702", nearest_city: "Los Angeles, CA", google_map_link: "https://goo.gl/maps/pTKpYJdCSzK2", level: "intermediate", length: "10 miles out and back", main_picture: File.new(File.join(Rails.root, "app", "assets", "images", "seedimages", "Bridge_to_Nowhere.jpg")))
Hike.create(name: "Bridge to Nowhere", date: "07/05/2018", user: i, location: btn)

j = User.create(name: "Jim Moore", email: "jrmoore90046@me.com", password: "jennycherry", hometown: "Pendleton, OR", level: "novice",)
rc = Location.create(state: "CA", location_name: "Runyon Canyon", location_address: "2000 N Fuller Ave, Los Angeles, CA 90046", nearest_city: "Los Angeles, CA", google_map_link: "https://goo.gl/maps/LDdvPXtg83v", level: "novice", length: "3 miles out and back", main_picture: File.new(File.join(Rails.root, "app", "assets", "images", "seedimages", "runyon-canyon.jpg")))
Hike.create(name: "Runyon Canyon", date: "17/05/2018", user: j, location: rc)
