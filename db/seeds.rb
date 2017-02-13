# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
kenny = User.create!(name: 'Kenny', email: 'kenny@gmail.com')
cartman = User.create!(name: 'Eric Cartman', email: 'ecartman@gmail.com')
chef = User.create!(name: 'Chef', email: 'chef@gmail.com')
