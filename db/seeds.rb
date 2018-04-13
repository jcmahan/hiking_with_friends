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
    name: "James Smith",
    email: "jsmith@fake.com",
    password_digest: " ",
    hometown: "LA",
    level: "novice",
    profile_picture: "james.gif",
    contact: "2125551212",
    facebook_url: "www.facebook.com/jsmithBS",
    instagram_url: "www.instagram.com./jsmithBS",
    admin: "true"
}, {
    name: "Jon Johnson",
    email: "jjohnson@bs.com",
    password_digest: " ",
    hometown: "NYC",
    level: "intermediate",
    profile_picture: "Jon.jpg",
    contact: "9175551212",
    facebook_url: "www.facebook.com/jjohnsonBS",
    instagram_url: "www.instagram.com/jjohnsonBS",
    admin: "false"
}, {
    name: "Mike Miller",
    email: "mmiller@completebs.com",
    password_digest: " ",
    hometown: "Chi-town",
    level: "expert",
    profile_picture: "Mike.png",
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
    nearest_city: "Los Angeles",
    location: "1234 Main St, Los Angeles, CA 90017",
    level: "novice",
    length: "2.1 km",
    main_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Los_Angeles%2C_Winter_2016.jpg/800px-Los_Angeles%2C_Winter_2016.jpg"
}, {
    state: "CA",
    nearest_city: "San Francisco, CA",
    location: "5678 Main St, San Francisco, CA 94102",
    level: "intermediate",
    length: "3.4 km",
    main_picture: "https://travel.usnews.com/static-travel/images/destinations/20/gettyimages-123318669.jpg"
}, {
    state: "OR",
    nearest_city: "Bend, OR",
    location: "9123 Main St, Bend, OR, 97703",
    level: "expert",
    length: "10.5 km",
    main_picture: "https://bendoregonstock.com/downloads/drake-park-winter-aerial/"
}]
Location.create locations

