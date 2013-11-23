# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(username: "Linds", email: "linds@gmail.com", password: "linds")

Gif.create!(title: "holler", link: "http://media.giphy.com/media/m6BXPlP86xeSs/giphy.gif")

Gifcomment.create!(link: "http://awesomegifs.com/wp-content/uploads/man-punches-bear-in-the-face.gif")
