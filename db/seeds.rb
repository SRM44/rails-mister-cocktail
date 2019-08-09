require 'open-uri'
require 'json'

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

request = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
results = JSON.parse(request)

results['drinks'].each do |result|
  Ingredient.create!(name: result['strIngredient1'])
end
puts 'Ingredients created!'
