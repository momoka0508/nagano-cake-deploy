# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: 'admin@gmail.com',
  password: 'tyantyans'
  )

Customer.create!(
  email: 'user@gmail.com',
  password: 'testtest',
  last_name: 'ちゃん',
  first_name: 'ちゃん',
  last_name_kana: 'チャン',
  first_name_kana: 'チャン',
  zip_code: '777',
  address: '東京都',
  phone_number: '777'
  )