# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Destroying all the shit'
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all
puts 'Creating'

Cocktail.create(name: 'Margarita')
Cocktail.create(name: 'Cuba Libre')
Cocktail.create(name: 'Cosmopolitan')

100.times do
  Ingredient.create(
    name: Faker::Food.fruits
  )
end

puts 'the end'
