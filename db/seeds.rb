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

i1 = Item.create(name: Faker::Movie.unique.name)
i2 =Item.create(name: Faker::Music.unique.name)
i3 =Item.create(name: Faker::Bank.unique.name)
i4 =Item.create(name: Faker::BackToTheFuture.character)
i5 =Item.create(name: Faker::DragonBall.character)

gl1 = Glist.create(user_id: u1.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)
gl2 = Glist.create(user_id: u2.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)
gl3 = Glist.create(user_id: u3.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)

bl1 = Blist.create(user_id: u1.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)
bl2 = Blist.create(user_id: u2.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)
bl3 = Blist.create(user_id: u3.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)

bl_item1= BlistItem.create(blist_id: bl1.id, item_id: i1.id, reason: Faker::BackToTheFuture.quote, rank: 1)

bl_item2= BlistItem.create(blist_id: bl1.id, item_id: i2.id, reason: Faker::BackToTheFuture.quote, rank: 2)

bl_item3= BlistItem.create(blist_id: bl1.id, item_id: i3.id, reason: Faker::BackToTheFuture.quote, rank: 3)

bl_item4= BlistItem.create(blist_id: bl2.id, item_id: i3.id, reason: Faker::BackToTheFuture.quote, rank: 1)

bl_item5= BlistItem.create(blist_id: bl2.id, item_id: i2.id, reason: Faker::BackToTheFuture.quote, rank: 2)

bl_item6= BlistItem.create(blist_id: bl2.id, item_id: i1.id, reason: Faker::BackToTheFuture.quote, rank: 3)

bl_item7= BlistItem.create(blist_id: bl3.id, item_id: i2.id, reason: Faker::BackToTheFuture.quote, rank: 1)

bl_item8= BlistItem.create(blist_id: bl3.id, item_id: i1.id, reason: Faker::BackToTheFuture.quote, rank: 2)

bl_item9= BlistItem.create(blist_id: bl3.id, item_id: i3.id, reason: Faker::BackToTheFuture.quote, rank: 3)

gl_item1= GlistItem.create(glist_id: bl3.id, item_id: i4.id, reason: Faker::BackToTheFuture.quote, rank: 1)

gl_item2= GlistItem.create(glist_id: bl2.id, item_id: i4.id, reason: Faker::BackToTheFuture.quote, rank: 1)

gl_item3= GlistItem.create(glist_id: bl1.id, item_id: i5.id, reason: Faker::BackToTheFuture.quote, rank: 1)
