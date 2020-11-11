# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user1 = User.create!(email: "vic@test", pseudo: "Vic", password: "111111", password_confirmation: "111111")


recette1 = Recette.create!(titre: "The Foccacia", description: "LA PRÉPARATION DE LA RECETTE
Pour la pâte :
Mettre la levure et l'eau tiède dans le bol et mélanger.
Ajoutez la farine, puis l'huile et le sel et pétrir 4mn jusqu'à obtenir une pâte bien souple.
Mettez la pâte en boule, huilez-la légèrement, déposez-la dans un saladier, couvrez et laissez reposer 10mn.
Déposez ensuite délicatement la pâte sur une plaque de cuisson recouvert de papier sulfurisé, et laissez lever encore 10mn.
Puis étalez délicatement la pâte à l'aide d'un rouleau à pâtisserie, sans appuyer pour ne pas détruire les bulles d'air.
Laissez à nouveau la pâte se détendre 20mn.

Pour l'émultion:
Mettre l'eau, l'huile d'olive et le sel dans le bol et mélanger activement.

Le façonnage:
Au bout des 20mn, faîtes des trous avec les doigts en appuyant fortement, et versez  l'émulsion huile/eau/sel sur la pâte, afin que tous les trous soient bien remplis , et laissez à nouveau lever 20mn et saupoudrez de romarin.
10 minutes avant la fin de ce dernier temps de pose, préchauffez votre four à 200° chaleur tournante
Enfournez la foccacia lorsqu'elle a fini de lever, pour une durée de 20mn.
Elle doit être juste dorée.
Surveillez bien la fin de cuisson.", univers:"Pâte", typeplat:"Apéritif", lienUrl:"https://www.espace-recettes.fr/pains-viennoiseries-recettes/la-foccacia/ghi054ta-e6628-405718-cfcd2-75w2hxw6", commentaire: "Une recette de dingue !", duree: "40", difficulte: "20", cuisson: "5", user_id: user1.id)



ingredient1 = Ingredient.create!(nom:"levure fraîche", quantite:"20", unite:"G",recette_id: recette1.id)
ingredient2 = Ingredient.create!(recette_id: recette1.id, nom:"Eau", quantite:"300", unite:"g")
ingredient3 = Ingredient.create!(recette_id: recette1.id, nom:"Farine", quantite:"500", unite:"g")
ingredient4 = Ingredient.create!(recette_id: recette1.id, nom:"Huile d'olive", quantite:"15", unite:"g")
ingredient4 = Ingredient.create!(recette_id: recette1.id, nom:"Sel", quantite:"10", unite:"g")
ingredient2 = Ingredient.create!(recette_id: recette1.id, nom:"Eau", quantite:"30", unite:"g")
ingredient2 = Ingredient.create!(recette_id: recette1.id, nom:"Sel", quantite:"1", unite:"Cuillière à café")
ingredient2 = Ingredient.create!(recette_id: recette1.id, nom:"Romarin", quantite:"1", unite:"unité(s)")


ingredient5 = Ingredient.create!(recette_id: recette1.id, nom:"basilic", quantite:"1/2", unite:"unité(s)")
ingredient4 = Ingredient.create!(recette_id: recette1.id, nom:"Huile d'olive", quantite:"30", unite:"g")

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
8. Cuire 55min/1h à 240°C", astuce:"recette adaptée car pas assez salée, bien mettre 2cc de sel
Ne pas faire préchauffer le four", univers:"Pain", typeplat:"plat", lienUrl:"https://www.cookomix.com/recettes/pain-cocotte-thermomix/", commentaire: "Un pain comme chez le boulanger!", note:"5", duree: "10", difficulte: "1", cuisson: "60", user_id: user1.id)


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

file1 = URI.open ('hhttps://fr.rc-cdn.community.thermomix.com/recipeimage/ghi054ta-e6628-405718-cfcd2-75w2hxw6/a8479e31-f2ad-417d-b2f0-62267b2c0680/main/la-foccacia.jpg')
recette1.photo.attach(io: file1, filename:"pizza.png", content_type: 'image/png')

file2 = URI.open ('https://images.unsplash.com/photo-1571175534150-72cd2b5a6039?ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80')
recette2.photo.attach(io: file2, filename:"spaguetti.png", content_type: 'image/png')

file3 = URI.open ('https://www.cookomix.com/wp-content/uploads/2016/03/pain-cocotte-thermomix-800x600.jpg')
recette3.photo.attach(io: file3, filename:"paincocotte.png", content_type: 'image/png')


file4 = URI.open ('https://www.cookomix.com/wp-content/uploads/2016/03/pain-cocotte-thermomix-800x600.jpg')
recette4.photo.attach(io: file4, filename:"paincocotte.png", content_type: 'image/png')

