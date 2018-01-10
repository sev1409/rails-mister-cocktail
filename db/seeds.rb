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
    description: "The Old Fashioned is a cocktail made by muddling sugar with bitters, then adding alcohol, such as whiskey or brandy, and a twist of citrus rind.",
    photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1513352106/cocktail-old-fashioned_kpkzo3.png"
  },
  {
    name: "Mojito",
    description: "Traditionally, a Mojito is a cocktail that consists of five ingredients: white rum, sugar, lime juice, soda water, and mint.",
    photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1513352106/cocktail-mojito_krk8ss.png"
  },
  {
    name: "Daiquiri",
    description: "Daiquiri is a family of cocktails whose main ingredients are rum, citrus juice, and sugar or other sweetener.",
    photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1513352105/cocktail_daiquiri-1-e1468966914141_vjbl1g.png"
  },
  {
    name: "Margarita",
    description: "A Margarita is a cocktail consisting of tequila, triple sec, and lime or lemon juice, often served with salt or sugar on the rim of the glass.",
    photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1513352105/b688cc6826a39163f77671f72d83026d_pw7ldu.png"
  },
  {
    name: "Cosmopolitan",
    description: "A Cosmopolitan, or informally a cosmo, is a cocktail made with vodka, triple sec, cranberry juice, and freshly squeezed or sweetened lime juice.",
    photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1513352106/cocktail_cosmopolitan-1_ejf1k8.png"
  },
  {
    name: "Manhattan",
    description: "A Manhattan is a cocktail made with whiskey, sweet vermouth, and bitters.",
    photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1513352106/cocktail_bitters_aromatic_s735kx.png"
  },
  {
    name: "Piña Colada",
    description: "The Piña Colada is a sweet cocktail made with rum, coconut cream or coconut milk, and pineapple juice, usually served either blended or shaken with ice.",
    photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1513352106/5361f42d65bcdaff41b3bcbff1644d6f_s3dn2b.png"
  },
  {
    name: "Gin Tonic",
    description: "A Gin and Tonic is a highball cocktail made with gin and tonic water poured over ice.",
    photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1513352113/cocktail_gin_tonic-1_uvvtfn.png"
  },
]

cocktails.each { |cocktail| Cocktail.create(cocktail) }
