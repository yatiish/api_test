# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User1 = Owner.create({name:'matz'})

Article.create({name:"iPhone 12SC Plus", price:"42000$", description:"this is a revolution", owner_id: User1.id})
Article.create({name:"Apple ipad", price:"62000$", description:"New apple ipad", owner_id: User1.id})

User2 = Owner.create({name:'yatish'})

Article.create({name:"Ducati Diavel", price:"100000$", description:"Nice bike", owner_id: User2.id})
Article.create({name:"Levis jeans", price:"50$", description:"Good jeans", owner_id: User2.id})