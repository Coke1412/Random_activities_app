# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Category.destroy_all
Activity.destroy_all
User.destroy_all
 



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

     Events.image.attach(io: File.open('./app/assets/images/categories/events.png'), filename: 'events.png', content_type: 'image/png')


Studying = Category.create(
    name: "Studying", 
    description: "The use of the mind to gain knowledge, as by reading, investigation, etc")

Sports = Category.create(
    name: "Sports", 
    description: "An often competitive athletic activity requiring skill or physical ability")

Tourism = Category.create(
    name: "Tourism", 
    description: "traveling to and staying in places outside one's usual environment for not more than one consecutive year for leisure and not less than 24 hours")


    #ACTIVITIES

    #ART

Music = Activity.create(
    name: "Music",
    category: Art
)

    Music.image.attach(io: File.open( './app/assets/images/activities/art/playingmusic.jpg'), filename: 'playingmusic.jpg', content_type: 'image/jpg')

Films = Activity.create(
    name: "Films",
    category: Art
)

Literature = Activity.create(
    name: "Literature",
    category: Art
)

Videogames = Activity.create(
    name: "Videogames",
    category: Art
)





#SPORTS

Skateboarding = Activity.create(
    name: "Skateboarding",
    category: Sports)

Skateboarding.image.attach(io: File.open( './app/assets/images/activities/sports/skateboarding.jpg'), filename: 'skateboarding.jpg', content_type: 'image/jpg')