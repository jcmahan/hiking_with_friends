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
    password: "cat",
    hometown: "LA",
    level: "novice",
    profile_picture: File.new("#{Rails.root}/db/seedimages/beach.jpg"),
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
    profile_picture: File.new("#{Rails.root}/db/seedimages/onaboat.jpg"),
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
    profile_picture: File.new("#{Rails.root}/db/seedimages/clouds.jpg"),
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
}, {
    state: "CA",
    nearest_city: "San Francisco, CA",
    location: "5678 Main St, San Francisco, CA 94102",
    level: "intermediate",
    length: "3.4 km",
}, {
    state: "OR",
    nearest_city: "Bend, OR",
    location: "9123 Main St, Bend, OR, 97703",
    level: "expert",
    length: "10.5 km",
}]

Location.create locations

# Photo.destroy_all

# x = Photo.new(description: "beach", image: File.new("#{Rails.root}/db/seedimages/beach.jpg"))