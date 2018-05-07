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
i2 = Item.create(name: Faker::Music.unique.name)
i3 = Item.create(name: Faker::Bank.unique.name)
i3 = Item.create(name: 'pigeons')

gl1 = Glist.create(user_id: u1.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)
gl2 = Glist.create(user_id: u2.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)
gl3 = Glist.create(user_id: u3.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)

bl1 = Glist.create(user_id: u1.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)
bl2 = Glist.create(user_id: u2.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)
bl3 = Glist.create(user_id: u3.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)

bl_item1= BlistItem.create(list_id: bl1.id, item_id: i1.id)
