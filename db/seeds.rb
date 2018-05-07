# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.new(name: Faker::Name.unique.name)
u2 = User.new(name: Faker::Name.unique.name)
u3 = User.new(name: Faker::Name.unique.name)

i1 = Item.new(name: Faker::Movie.unique.name)
i2 =Item.new(name: Faker::Music.unique.name)
i3 =Item.new(name: Faker::Bank.unique.name)

gl1 = Glist.new(user_id: u1.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)
gl2 = Glist.new(user_id: u2.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)
gl3 = Glist.new(user_id: u3.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)

bl1 = Glist.new(user_id: u1.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)
bl2 = Glist.new(user_id: u2.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)
bl3 = Glist.new(user_id: u3.id, description: Faker::HitchhikersGuideToTheGalaxy.quote)

bl_item1= BlistItem.new(list_id: bl1.id, item_id: i1.id)
