# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
dualipa = User.create(username: 'dualipa')
mileycyrus = User.create(username: 'mileycyrus')
taylorswift = User.create(username: 'taylorswift')
justinbieber = User.create(username: 'justinbieber')
drake = User.create(username: 'drake')
barackobama = User.create(username: 'barackobama')
byebug
puts 'seeded'
