# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Candle.destroy_all
Category.destroy_all

puts 'Creating categories...'
vanilla = Category.create!(name: 'vanilla')
strawberry = Category.create!(name: 'strawberry')

puts 'Creating teddies...'
Candle.create!(name: 'Madagascan Vanilla', category: vanilla)

Candle.create!(name: 'Wild Jungle', category: vanilla)
Candle.create!(name: 'Blush Living', category: strawberry)
puts 'Finished!'
