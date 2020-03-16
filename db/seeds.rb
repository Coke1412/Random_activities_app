# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Activity.delete_all
Category.delete_all
User.destroy_all
Admin.destroy_all




 



#CATEGORIES

Art = Category.create(
    name: "Art",
    description: "The quality, production, expression, or realm, according to aesthetic principles, of what is beautiful, appealing, or of more than ordinary significance. e.g. Music, films, literature, etc")

    Art.image.attach(io: File.open( './app/assets/images/categories/art.png'), filename: 'art.png', content_type: 'image/png')


Electronics = Category.create(
    name: "Electronics", 
    description: "Electronic related activities, such as watching TV, browsing internet, playing videogames, etc.")

    Electronics.image.attach(io: File.open( './app/assets/images/categories/electronics02.jpg'), filename: 'electronics02.jpg', content_type: 'image/jpg')


Events = Category.create(
    name: "Events", 
    description: "Indoor/outdoor events")

    Events.image.attach(io: File.open('./app/assets/images/categories/events.png'), filename: 'events.png', content_type: 'image/png')

Relaxation = Category.create(
     name: "Relaxation", 
     description: "The process to become calmer, less anxious, stressed or angered. It can also lower muscle tension, blood pressure and slow heart and breath rates, among other benefits.")

    Relaxation.image.attach(io: File.open('./app/assets/images/categories/relaxation.jpg'), filename: 'relaxation.jpg', content_type: 'image/jpg')


Studying = Category.create(
    name: "Studying", 
    description: "The use of the mind to gain knowledge, as by reading, investigation, etc")

    Studying.image.attach(io: File.open('./app/assets/images/categories/studying.jpg'), filename: 'studying.jpg', content_type: 'image/jpg')

Social = Category.create(
    name: "Social"
    description: "Group activities with friends or family"

    Social.image.attach(io File.open('./app/assets/images/categories/social.jpg'), filename: 'social.jpg', content_type: 'image/jpg')


Sports = Category.create(
    name: "Sports", 
    description: "An often competitive athletic activity requiring skill or physical ability")

    Sports.image.attach(io: File.open('./app/assets/images/categories/sports.jpg'), filename: 'sports.jpg', content_type: 'image/jpg')

Tourism = Category.create(
    name: "Tourism", 
    description: "traveling to and staying in places outside one's usual environment for not more than one consecutive year for leisure and not less than 24 hours")

    Tourism.image.attach(io: File.open('./app/assets/images/categories/tourism.jpg'), filename: 'tourism.jpg', content_type: 'image/jpg')


#ACTIVITIES

    #ART

Play_music = Activity.create(
    name: "Play an instrument",
    category: Art
)

    Play_music.image.attach(io: File.open( './app/assets/images/activities/art/playingmusic.jpg'), filename: 'playingmusic.jpg', content_type: 'image/jpg')

Film = Activity.create(
    name: "Watch a film",
    category: Art
)

Film.image.attach(io: File.open( './app/assets/images/activities/art/watchafilm.jpg'), filename: 'watchafilm.jpg', content_type: 'image/jpg')

Reading = Activity.create(
    name: "Read a book",
    category: Art
)

Reading.image.attach(io: File.open( './app/assets/images/activities/art/readabook.jpg'), filename: 'readabook.jpg', content_type: 'image/jpg')



#ELECTRONICS

Gaming = Activity.create(
    name: "Play a videogame",
    category: Electronics
)

Gaming.image.attach(io: File.open( './app/assets/images/activities/electronics/gaming.jpg'), filename: 'gaming.jpg', content_type: 'image/jpg')



#RELAXATION

listening_music = Activity.create(
    name: "Listen to music",
    category: Relaxation
)

listening_music.image.attach(io: File.open( './app/assets/images/activities/relaxation/listeningmusic.jpeg'), filename: 'listeningmusic.jpeg', content_type: 'image/jpeg')

#SPORTS

Skateboarding = Activity.create(
    name: "go skateboarding",
    category: Sports
)

Skateboarding.image.attach(io: File.open( './app/assets/images/activities/sports/skateboarding.jpg'), filename: 'skateboarding.jpg', content_type: 'image/jpg')

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
