# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user1 = User.create!(email: "vic@test", pseudo: "Vic", password: "111111", password_confirmation: "111111")


recette1 = Recette.create!(titre: "Pizza pepperoni", description: "Préchauffer le four à 200°C (thermostat 6-7).
Mélanger le coulis de tomate avec le 4 épices, saler et poivrer si besoin.
Egoutter la mozzarella et la couper en tranches.
Dérouler la pâte à pizza et la placer sur une plaque allant au four en conservant le papier cuisson dessous.
Badigeonner de coulis de tomate et répartir les tranches de mozzarella.
Enfourner 15 minutes.
Ajouter les tranches de pepperoni et les feuilles de basilic.
Enfourner à nouveau 5 minutes.", univers:"Pizza", typeplat:"plat", lienUrl:"https://www.marmiton.org/recettes/recette_pizza-pepperoni_371851.aspx#d89655-p1", commentaire: "Une recette de dingue !", note:"5", duree: "40", difficulte: "1", cuisson: "5", user_id: user1.id)



ingredient1 = Ingredient.create!(nom:"pâte à pizza", quantite:"1", unite:"unité(s)",recette_id: recette1.id)
ingredient2 = Ingredient.create!(recette_id: recette1.id, nom:"pepperoni", quantite:"150", unite:"g")
ingredient3 = Ingredient.create!(recette_id: recette1.id, nom:"Boules de mozzarella", quantite:"2", unite:"unité(s)")
ingredient4 = Ingredient.create!(recette_id: recette1.id, nom:"coulis de tomate", quantite:"200", unite:"g")
ingredient5 = Ingredient.create!(recette_id: recette1.id, nom:"basilic", quantite:"1/2", unite:"unité(s)")

recette2 = Recette.create!(titre: "spaguetti Bolo(sse)", description: "Préchauffer le four à 200°C (thermostat 6-7).
Mélanger le coulis de tomate avec le 4 épices, saler et poivrer si besoin.
Egoutter la mozzarella et la couper en tranches.
Dérouler la pâte à pizza et la placer sur une plaque allant au four en conservant le papier cuisson dessous.
Badigeonner de coulis de tomate et répartir les tranches de mozzarella.
Enfourner 15 minutes.
Ajouter les tranches de pepperoni et les feuilles de basilic.
Enfourner à nouveau 5 minutes.", univers:"Patte", typeplat:"plat", lienUrl:"https://www.marmiton.org/recettes/recette_pizza-pepperoni_371851.aspx#d89655-p1", commentaire: "Une recette de dingue !", note:"5", duree: "40", difficulte: "1", cuisson: "5", user_id: user1.id)



ingredient6 = Ingredient.create!(nom:"pâte à pizza", quantite:"1", unite:"unité(s)",recette_id: recette2.id)
ingredient7 = Ingredient.create!(recette_id: recette2.id, nom:"pepperoni", quantite:"150", unite:"g")
ingredient8 = Ingredient.create!(recette_id: recette2.id, nom:"Boules de mozzarella", quantite:"2", unite:"unité(s)")
ingredient9 = Ingredient.create!(recette_id: recette2.id, nom:"coulis de tomate", quantite:"200", unite:"g")
ingredient10 = Ingredient.create!(recette_id: recette2.id, nom:"basilic", quantite:"1/2", unite:"unité(s)")


recette3 = Recette.create!(titre: "Pain Cocotte de boulanger", description: "
1. Melanger 300g d'eau et 15g de levure de fraiche (10g de levure déshydratée)
2. Ajouter 500g de farine + 2 CC de sel et pétrir la patte pendant 5 min
3. Mettre la pate dans un recipient, couvrir d'un film plastic pour éviter que la patte ne sèche.
4. Laisser lever la patte 1h30
5. Donner une forme ronde à la patte
6. Graisser la cocotte ou mettre du papier cuisson
7. Faire 5 entailles parrallèles, au couteau bien aiguisé
7. Badigeonner d'eau et soupoudrer de farine
8. Cuire 55min/1h à 240°C", astuce:"recette adaptée car pas assez salée, bien mettre 2cc de sel", univers:"Pain", typeplat:"plat", lienUrl:"https://www.cookomix.com/recettes/pain-cocotte-thermomix/", commentaire: "Un pain comme chez le boulanger!", note:"5", duree: "10", difficulte: "1", cuisson: "60", user_id: user1.id)


ingredient1 = Ingredient.create!(nom:"Eau", quantite:"300", unite:"g",recette_id: recette3.id)
ingredient2 = Ingredient.create!(recette_id: recette3.id, nom:"Farine", quantite:"500", unite:"g")
ingredient3 = Ingredient.create!(recette_id: recette3.id, nom:"Sel", quantite:"2", unite:"Cuillière(s) à café")



recette4 = Recette.create!(titre: "Pain Cocotte de boulanger", description: "
1. Melanger 300g d'eau et 15g de levure de fraiche (10g de levure déshydratée)
2. Ajouter 500g de farine + 2 CC de sel et pétrir la patte pendant 5 min
3. Mettre la pate dans un recipient, couvrir d'un film plastic pour éviter que la patte ne sèche.
4. Laisser lever la patte 1h30
5. Donner une forme ronde à la patte
6. Graisser la cocotte ou mettre du papier cuisson
7. Faire 5 entailles parrallèles, au couteau bien aiguisé
7. Badigeonner d'eau et soupoudrer de farine
8. Cuire 55min/1h à 240°C", astuce:"recette adaptée car pas assez salée, bien mettre 2cc de sel", univers:"Pain", typeplat:"plat", lienUrl:"https://www.cookomix.com/recettes/pain-cocotte-thermomix/", commentaire: "Un pain comme chez le boulanger!", note:"5", duree: "10", difficulte: "1", cuisson: "60", user_id: user1.id)


ingredient1 = Ingredient.create!(nom:"Eau", quantite:"300", unite:"g",recette_id: recette4.id)
ingredient2 = Ingredient.create!(recette_id: recette4.id, nom:"Farine", quantite:"500", unite:"g")
ingredient3 = Ingredient.create!(recette_id: recette4.id, nom:"Sel", quantite:"2", unite:"Cuillière(s) à café")



require "open-uri"

file1 = URI.open ('https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
recette1.photo.attach(io: file1, filename:"pizza.png", content_type: 'image/png')

file2 = URI.open ('https://images.unsplash.com/photo-1571175534150-72cd2b5a6039?ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80')
recette2.photo.attach(io: file2, filename:"spaguetti.png", content_type: 'image/png')

file3 = URI.open ('https://www.cookomix.com/wp-content/uploads/2016/03/pain-cocotte-thermomix-800x600.jpg')
recette3.photo.attach(io: file3, filename:"paincocotte.png", content_type: 'image/png')


file4 = URI.open ('https://www.cookomix.com/wp-content/uploads/2016/03/pain-cocotte-thermomix-800x600.jpg')
recette4.photo.attach(io: file4, filename:"paincocotte.png", content_type: 'image/png')

