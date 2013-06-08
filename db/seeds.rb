# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
30.times do
Cheque.create(sender: Faker::Name.name, recipient: Faker::Name.name, amount: rand(1...10000000), cross: true )
end

30.times do
c= Cheque.find(rand(1..10))
Cheque.create(sender: c.recipient,recipient: c.sender,amount:rand(1...1000000),cross:true)
end