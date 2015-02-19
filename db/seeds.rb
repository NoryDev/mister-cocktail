# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

ingredients = []
ingredients << Ingredient.create(name: "lemon")
ingredients << Ingredient.create(name: "ice")
ingredients << Ingredient.create(name: "mint leaves")
ingredients << Ingredient.create(name: "rhum")
ingredients << Ingredient.create(name: "strawberry")

cocktails = []
cocktails << Cocktail.create(name: "Martini")
cocktails << Cocktail.create(name: "Mojito")
cocktails << Cocktail.create(name: "Fizz")
cocktails << Cocktail.create(name: "Cosmopolitan")
cocktails << Cocktail.create(name: "Bloody Mary")

50.times do
  Dose.create(ingredient: ingredients.sample, cocktail: cocktails.sample, description: "#{rand(101)}cl")
end