# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'resolv-replace'

ingredients = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)

ingredients['drinks'].each do |i|
  Ingredient.create(name: i['strIngredient1'])
end

Cocktail.create(name: "Caipirinha", remote_photo_url: "https://res.cloudinary.com/mpc-cloud/image/upload/v1574553923/CookIt/r7ltc0fzsjf9bgn9vwm4.jpg")
Cocktail.create(name: "Cranberry Punch", remote_photo_url: "https://res.cloudinary.com/mpc-cloud/image/upload/v1575058715/CookIt/bm8jo8fpafyjziavrys4.jpg")
Cocktail.create(name: "Blood Mary", remote_photo_url: "https://res.cloudinary.com/mpc-cloud/image/upload/v1574553924/CookIt/chwlwmhvigwccfvnfwua.jpg")
Cocktail.create(name: "Cuba Libre", remote_photo_url: "https://res.cloudinary.com/mpc-cloud/image/upload/v1574532370/CookIt/cocktail-banner3_lol4vo.jpg")
