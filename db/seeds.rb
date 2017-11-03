require 'json'
require 'open-uri'

Cocktail.destroy_all
Ingredient.destroy_all

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
serialized = open(url).read
thing = JSON.parse(serialized)
thing["drinks"].each do |d|
  Ingredient.create(name: d["strIngredient1"])
end



cocktails = [
  {
    name: "Old Fashioned",
    description: "The Old Fashioned is a cocktail made by muddling sugar with bitters, then adding alcohol, such as whiskey or brandy, and a twist of citrus rind."
  },
  {
    name: "Mojito",
    description: "Traditionally, a Mojito is a cocktail that consists of five ingredients: white rum, sugar, lime juice, soda water, and mint."
  },
  {
    name: "Daiquiri",
    description: "Daiquiri is a family of cocktails whose main ingredients are rum, citrus juice, and sugar or other sweetener."
  },
  {
    name: "Margarita",
    description: "A Margarita is a cocktail consisting of tequila, triple sec, and lime or lemon juice, often served with salt or sugar on the rim of the glass."
  },
  {
    name: "Cosmopolitan",
    description: "A Cosmopolitan, or informally a cosmo, is a cocktail made with vodka, triple sec, cranberry juice, and freshly squeezed or sweetened lime juice."
  },
  {
    name: "Manhattan",
    description: "A Manhattan is a cocktail made with whiskey, sweet vermouth, and bitters."
  },
  {
    name: "Piña Colada",
    description: "The Piña Colada is a sweet cocktail made with rum, coconut cream or coconut milk, and pineapple juice, usually served either blended or shaken with ice."
  },
  {
    name: "Gin Tonic",
    description: "A Gin and Tonic is a highball cocktail made with gin and tonic water poured over ice."
  },
  {
    name: "Martini",
    description: "The martini is a cocktail made with gin and vermouth, and garnished with an olive or a lemon twist."
  },
  {
    name: "Sangria",
    description: "Sangria is a punch, the sangria traditionally consists of red wine and chopped fruit, often with other ingredients such as orange juice or brandy."
  },
]

cocktails.each { |cocktail| Cocktail.create(cocktail) }
