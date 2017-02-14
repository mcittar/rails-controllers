# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Contact.destroy_all
ContactShare.destroy_all

kenny_u = User.create!(username: 'kmckormick')
cartman_u = User.create!(username: 'ecartman')
chef_u = User.create!(username: 'chef')

kenny_c = Contact.create!(name: 'Kenny', email: 'kenny@gmail.com', user_id: chef_u.id)
cartman_c = Contact.create!(name: 'Eric Cartman', email: 'ecartman@gmail.com', user_id: kenny_u.id)
chef_c = Contact.create!(name: 'Chef', email: 'chef@gmail.com', user_id: kenny_u.id)

share1 = ContactShare.create!(user_id: cartman_u.id, contact_id: kenny_c.id)
share2 = ContactShare.create!(user_id: cartman_u.id, contact_id: cartman_c.id)
share1 = ContactShare.create!(user_id: cartman_u.id, contact_id: chef_c.id)
