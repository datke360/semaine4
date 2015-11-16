# semaine4

# Exercice 1 : Voici le lien vers l'ensemble de mes badges Codecademy : https://www.codecademy.com/fr/users/datiche36/achievements  

# Exercice 2 :  
require 'Open-uri'
require 'json'

loop do
    puts "Entrez un numéro de Code Barres"
    bar_code = gets.chomp

    url = "http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"  

    json = open(url).read

    data= JSON.parse(json)

    puts data ['product']['product_name']

end