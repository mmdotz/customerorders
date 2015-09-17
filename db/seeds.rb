# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.all.each do |user|
  30.times do
   User.create({
     first_name:  Faker::Name.first_name,
     last_name:   Faker::Name.last_name,
     age:         Faker::Number.between(15, 100)
   })
  end
end

Orders.all.each do |order|
    30.times do
     Order.create({
       qty:       Faker::Number.between(1,10)
     })
  end
end

Addresses.all.each do |address|
  30.times do
    Addresses.create({
      street_name: Faker::Address.street_address
      city:        Faker::Address.city
      state:       Faker::Address.state
      zip:         Faker::Address.zip
      })
  end
end


