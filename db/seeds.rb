# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  30.times do
   user = User.create({
     first_name:  Faker::Name.first_name,
     last_name:   Faker::Name.last_name,
     age:         Faker::Number.between(15, 100)
   })
   Address.create({             #for each user(lowercase) assign an Address
      user_id:     user.id
      street_name: Faker::Address.street_address
      city:        Faker::Address.city
      state:       Faker::Address.state
      zip:         Faker::Address.zip
    })
  end


  50.times do
    Item.create({
      name:     Faker::Commerce.product_name
      price:    Faker::Number.between(1, 345)
      desc:     Faker::Commerce.color
      })
  end

  30.times do
   Order.create({
    user_id:   Faker::Number.between(1,30)
    item_id:   Faker::Number.between(1,50)
    qty:       Faker::Number.between(1,10)
   })
  end






