# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

file1 = URI.open('https://images.unsplash.com/photo-1605651202774-7d573fd3f12d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2FuZGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1572726729207-a78d6feb18d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhbmRsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1608181831718-2501832be3e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fGNhbmRsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
puts 'Cleaning database...'
Candle.destroy_all
Category.destroy_all

puts 'Creating categories...'
vanilla = Category.create!(name: 'vanilla')
strawberry = Category.create!(name: 'strawberry')

puts 'Creating teddies...'
candle1 = Candle.create!(name: 'Madagascan Vanilla', category: vanilla)
candle1.photo.attach(io: file1, filename: 'nes.png', content_type: 'image/png')

candle2 = Candle.create!(name: 'Wild Jungle', category: vanilla)
candle2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')

candle3 = Candle.create!(name: 'Heaven Scent', category: strawberry)
candle3.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

puts 'Finished!'
