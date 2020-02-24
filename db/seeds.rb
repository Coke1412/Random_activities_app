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


Category.create(name: "Art", description: "The quality, production, expression, or realm, according to aesthetic principles, of what is beautiful, appealing, or of more than ordinary significance. e.g. Music, films, literature, etc", image: "http://picsum.photos/id/1042/400/200")

Category.create(name: "Electronics", description: "Electronic related activities, such as watching TV, browsing internet, playing videogames, etc.", image: "http://picsum.photos/id/3/400/200")

Category.create(name: "Events", description: "Indoor/outdoor events", image: "http://picsum.photos/id/117/400/200")

Category.create(name: "Relaxation", description: "The process to become calmer, less anxious, stressed or angered. It can also lower muscle tension, blood pressure and slow heart and breath rates, among other benefits.", image: "http://picsum.photos/id/103/400/200")

Category.create(name: "Study", description: "The use of the mind to gain knowledge, as by reading, investigation, etc" ,image: "http://picsum.photos/id/24/400/200")

Category.create(name: "Sports", description: "An often competitive athletic activity requiring skill or physical ability", image: "http://picsum.photos/id/1077/400/200")

Category.create(name: "Tourism", description: "traveling to and staying in places outside one's usual environment for not more than one consecutive year for leisure and not less than 24 hours", image: "http://picsum.photos/id/1039/400/200")

