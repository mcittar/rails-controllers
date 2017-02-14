# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Contact.destroy_all

kenny_u = User.create!(username: 'kmckormick')
cartman_u = User.create!(username: 'ecartman')
chef_u = User.create!(username: 'chef')

kenny = Contact.create!(name: 'Kenny', email: 'kenny@gmail.com', user_id: chef_u.id)
cartman = Contact.create!(name: 'Eric Cartman', email: 'ecartman@gmail.com', user_id: kenny_u.id)
chef = Contact.create!(name: 'Chef', email: 'chef@gmail.com', user_id: kenny_u.id)
