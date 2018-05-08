# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: Faker::Name.unique.name)
u2 = User.create(name: Faker::Name.unique.name)
u3 = User.create(name: Faker::Name.unique.name)


i1 = Item.create(name: Faker::Movie.name)
i2 =Item.create(name: Faker::Music.name)
i3 =Item.create(name: Faker::Bank.name)
i4 =Item.create(name: Faker::BackToTheFuture.character)
i5 =Item.create(name: Faker::DragonBall.character)


i1 = Item.create(name: Faker::Cat.name, description: Faker::Demographic.demonym, img_url: "https://media.giphy.com/media/26DNdhSHx7gedBLoc/giphy.gif")
i2 =Item.create(name: Faker::Company.bs, description: Faker::Demographic.demonym, img_url: "https://media.giphy.com/media/26DNdhSHx7gedBLoc/giphy.gif")
i3 =Item.create(name: Faker::Bank.name, description: Faker::Demographic.demonym, img_url: "https://media.giphy.com/media/26DNdhSHx7gedBLoc/giphy.gif")
i4 =Item.create(name: Faker::BackToTheFuture.character, description: Faker::Demographic.demonym, img_url: "https://media.giphy.com/media/26DNdhSHx7gedBLoc/giphy.gif")
i5 =Item.create(name: Faker::DragonBall.character, description: Faker::Demographic.demonym, img_url: "https://media.giphy.com/media/26DNdhSHx7gedBLoc/giphy.gif")
i6 = Item.create(name: Faker::Cat.name, description: Faker::Demographic.demonym, img_url: "https://media.giphy.com/media/26DNdhSHx7gedBLoc/giphy.gif")
i7 =Item.create(name: Faker::Company.bs, description: Faker::Demographic.demonym, img_url: "https://media.giphy.com/media/26DNdhSHx7gedBLoc/giphy.gif")
i8 =Item.create(name: Faker::Bank.name, description: Faker::Demographic.demonym, img_url: "https://media.giphy.com/media/26DNdhSHx7gedBLoc/giphy.gif")
i9 =Item.create(name: Faker::BackToTheFuture.character, description: Faker::Demographic.demonym, img_url: "https://media.giphy.com/media/26DNdhSHx7gedBLoc/giphy.gif")
i10 =Item.create(name: Faker::DragonBall.character, description: Faker::Demographic.demonym, img_url: "https://media.giphy.com/media/26DNdhSHx7gedBLoc/giphy.gif")


l1 = List.create(user_id: u1.id, description: Faker::Dessert.topping)
l2 = List.create(user_id: u2.id, description: Faker::Dessert.topping)
l3 = List.create(user_id: u3.id, description: Faker::Dessert.topping)


li1 = ListItem.create(list_id: l1.id, item_id: i1.id, reason: Faker::Hipster.sentences(1), rank: 1)
li2 = ListItem.create(list_id: l1.id, item_id: i2.id, reason: Faker::Hipster.sentences(1), rank: 2)
li3 = ListItem.create(list_id: l1.id, item_id: i3.id, reason: Faker::Hipster.sentences(1), rank: 3)
li4 = ListItem.create(list_id: l1.id, item_id: i4.id, reason: Faker::Hipster.sentences(1), rank: 4)
li5 = ListItem.create(list_id: l1.id, item_id: i5.id, reason: Faker::Hipster.sentences(1), rank: 5)
li6 = ListItem.create(list_id: l1.id, item_id: i6.id, reason: Faker::Hipster.sentences(1), rank: 7)
li7 = ListItem.create(list_id: l1.id, item_id: i7.id, reason: Faker::Hipster.sentences(1), rank: 6)
li8 = ListItem.create(list_id: l1.id, item_id: i8.id, reason: Faker::Hipster.sentences(1), rank: 9)
li9 = ListItem.create(list_id: l1.id, item_id: i9.id, reason: Faker::Hipster.sentences(1), rank: 8)
li10 = ListItem.create(list_id: l1.id, item_id: i10.id, reason: Faker::Hipster.sentences(1), rank: 10)
li11 = ListItem.create(list_id: l2.id, item_id: i10.id, reason: Faker::Hipster.sentences(1), rank: 1)
li12 = ListItem.create(list_id: l2.id, item_id: i9.id, reason: Faker::Hipster.sentences(1), rank: 2)
li13 = ListItem.create(list_id: l2.id, item_id: i8.id, reason: Faker::Hipster.sentences(1), rank: 3)
li14 = ListItem.create(list_id: l2.id, item_id: i7.id, reason: Faker::Hipster.sentences(1), rank: 4)
li15 = ListItem.create(list_id: l2.id, item_id: i6.id, reason: Faker::Hipster.sentences(1), rank: 5)
li16 = ListItem.create(list_id: l2.id, item_id: i5.id, reason: Faker::Hipster.sentences(1), rank: 6)
li17 = ListItem.create(list_id: l2.id, item_id: i4.id, reason: Faker::Hipster.sentences(1), rank: 7)
li18 = ListItem.create(list_id: l2.id, item_id: i3.id, reason: Faker::Hipster.sentences(1), rank: 8)
li19 = ListItem.create(list_id: l2.id, item_id: i1.id, reason: Faker::Hipster.sentences(1), rank: 9)
li20 = ListItem.create(list_id: l2.id, item_id: i2.id, reason: Faker::Hipster.sentences(1), rank: 10)
li21 = ListItem.create(list_id: l3.id, item_id: i2.id, reason: Faker::Hipster.sentences(1), rank: 1)
li22 = ListItem.create(list_id: l3.id, item_id: i1.id, reason: Faker::Hipster.sentences(1), rank: 2)
li23 = ListItem.create(list_id: l3.id, item_id: i3.id, reason: Faker::Hipster.sentences(1), rank: 3)
li24 = ListItem.create(list_id: l3.id, item_id: i5.id, reason: Faker::Hipster.sentences(1), rank: 4)
li25 = ListItem.create(list_id: l3.id, item_id: i4.id, reason: Faker::Hipster.sentences(1), rank: 5)
li26 = ListItem.create(list_id: l3.id, item_id: i7.id, reason: Faker::Hipster.sentences(1), rank: 6)
li27 = ListItem.create(list_id: l3.id, item_id: i6.id, reason: Faker::Hipster.sentences(1), rank: 7)
li28 = ListItem.create(list_id: l3.id, item_id: i8.id, reason: Faker::Hipster.sentences(1), rank: 8)
li29 = ListItem.create(list_id: l3.id, item_id: i9.id, reason: Faker::Hipster.sentences(1), rank: 9)
li30 = ListItem.create(list_id: l3.id, item_id: i10.id, reason: Faker::Hipster.sentences(1), rank: 10)
