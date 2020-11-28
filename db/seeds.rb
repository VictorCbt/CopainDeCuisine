# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user1 = User.create!(email: "vic@test", pseudo: "Vic", password: "291287", password_confirmation: "291287")

recette1 = Recette.create!(titre: "The Foccacia", description: "
* Pour la pâte :
Mettre la levure et l'eau tiède dans le bol et mélanger.
Ajoutez la farine, puis l'huile et le sel et pétrir 4mn jusqu'à obtenir une pâte bien souple.
Mettez la pâte en boule, huilez-la légèrement, déposez-la dans un saladier, couvrez et laissez reposer 10mn.
Déposez ensuite délicatement la pâte sur une plaque de cuisson recouvert de papier sulfurisé, et laissez lever encore 10mn.
Puis étalez délicatement la pâte à l'aide d'un rouleau à pâtisserie, sans appuyer pour ne pas détruire les bulles d'air.
Laissez à nouveau la pâte se détendre 20mn.

* Pour l'émultion:
Mettre l'eau, l'huile d'olive et le sel dans le bol et mélanger activement.

* Le façonnage:
Au bout des 20mn, faîtes des trous avec les doigts en appuyant fortement, et versez  l'émulsion huile/eau/sel sur la pâte, afin que tous les trous soient bien remplis , et laissez à nouveau lever 20mn et saupoudrez de romarin.
10 minutes avant la fin de ce dernier temps de pose, préchauffez votre four à 200° chaleur tournante
Enfournez la foccacia lorsqu'elle a fini de lever, pour une durée de 20mn.
Elle doit être juste dorée.
Surveillez bien la fin de cuisson.",
univers:"Pâte",
typeplat:"Apéritif",
commentaire: "Une recette de dingue !",
duree: "40",
difficulte: "1",
cuisson: "20", user_id: user1.id)


ingredient1 = Ingredient.create!(nom:"levure fraîche", quantite:"20", unite:"g",recette_id: recette1.id)
ingredient2 = Ingredient.create!(recette_id: recette1.id, nom:"Eau", quantite:"300", unite:"g")
ingredient3 = Ingredient.create!(recette_id: recette1.id, nom:"Farine", quantite:"500", unite:"g")
ingredient4 = Ingredient.create!(recette_id: recette1.id, nom:"Huile d'olive", quantite:"15", unite:"g")
ingredient5 = Ingredient.create!(recette_id: recette1.id, nom:"Sel", quantite:"10", unite:"g")
ingredient6 = Ingredient.create!(recette_id: recette1.id, nom:"Eau", quantite:"30", unite:"g")
ingredient7 = Ingredient.create!(recette_id: recette1.id, nom:"Sel", quantite:"1", unite:"Cuillière à café")
ingredient7 = Ingredient.create!(recette_id: recette1.id, nom:"Sucre", quantite:"1", unite:"Cuillière à café")
ingredient8 = Ingredient.create!(recette_id: recette1.id, nom:"Romarin", quantite:"1", unite:"unité(s)")


recette2 = Recette.create!(titre: "Pâte à pizza", description: "
1. Graisser légèrement un grand saladier et réserver.
2. Mettre l'eau à témpérature ambiante, le sucre et la levure boulangère dans le bol, puis mélanger (plus facile au robot 20/30s)
3. Ajouter la farine, l'huile d'olive et le sel, puis pétrir pendant 2 min (à la main ou au robot)
3. Mettre la pâte dans le saladier huilé et former une boule.
4. Couvrir de film alimentaire légèrement huilé pour l'empêcher de coller à la pâte lors de la pousse, puis laisser lever jusqu'à ce que la pâte ait doublé de volume (environ 1 heure).
",
astuce:"
Ne pas écraser la patte lors de l'applatissage ! (Il faut garder les bulles d'air)
De préférence à la main pour façonner la pizza, mettez la pâte sur une plaque de four tapissée de papier cuisson.
Abaissez-la en la pressant du bout des doigts en partant du centre vers les bords, et étirez-la doucement pour lui donner sa forme.
Pour cuire la pizza, formez un petit bord tout autour et ajoutez la garniture de votre choix.
Enfournez et faites cuire 20 minutes env. dans un four préchauffé (230-250°C).", univers:["Pâte", "Pizza"],
typeplat:"plat",
lienUrl:"https://www.marmiton.org/recettes/recette_pizza-pepperoni_371851.aspx#d89655-p1",
commentaire: "Une recette de dingue !",
duree: "60", difficulte: "2", cuisson: "20", user_id: user1.id)


ingredient1 = Ingredient.create!(nom:"Huile d'olive", quantite:"30", unite:"g",recette_id: recette2.id)
ingredient2 = Ingredient.create!(recette_id: recette2.id, nom:"Eau", quantite:"220", unite:"g")
ingredient3 = Ingredient.create!(nom:"levure fraîche", quantite:"20", unite:"g",recette_id: recette2.id)
ingredient4 = Ingredient.create!(recette_id: recette2.id, nom:"Farine", quantite:"500", unite:"g")
ingredient5 = Ingredient.create!(recette_id: recette2.id, nom:"Sel", quantite:"1", unite:"Cuillière à café")


recette3 = Recette.create!(titre: "Pain Cocotte de boulanger", description:"
1. Melanger 300g d'eau et 15g de levure de fraiche (10g de levure déshydratée)
2. Ajouter 500g de farine + 2 CC de sel et pétrir la pâte pendant 5 min
3. Mettre la pate dans un recipient, couvrir d'un film plastic pour éviter que la patte ne sèche.
4. Laisser lever la pâte 1h30
5. Donner une forme ronde à la patte
6. Graisser la cocotte ou mettre du papier cuisson
7. Faire 5 entailles parrallèles, au couteau bien aiguisé
7. Badigeonner d'eau et soupoudrer de farine
8. Cuire 55min/1h à 240°C",
astuce:"Recette adaptée car pas assez salée.
Bien mettre 2cc de sel
Ne pas faire préchauffer le four",
univers:"Pain",
typeplat:"Plat",
lienUrl:"https://www.cookomix.com/recettes/pain-cocotte-thermomix/",
commentaire: "Un pain comme chez le boulanger!",
duree: "75", difficulte: "1", cuisson: "55", user_id:user1.id)

ingredient1 = Ingredient.create!(nom:"Eau", quantite:"300", unite:"g",recette_id: recette3.id)
ingredient2 = Ingredient.create!(recette_id: recette3.id, nom:"Farine", quantite:"500", unite:"g")
ingredient3 = Ingredient.create!(recette_id: recette3.id, nom:"Sel", quantite:"2", unite:"Cuillière(s) à café")

recette4 = Recette.create!(titre: "Pain au lait Olé", description:"1. Beurrer légèrement un saladier et réserver. Mettre le lait, le beurre fondu, la levure boulangère et le sucre dans le bol, et mélanger 3 minutes.
2. Ajouter la farine à pain et le sel, puis petrime 3 min (robot de préférence). Transvaser la pâte dans le saladier préparé, couvrir de film alimentaire ou d’un torchon humide, et laisser pousser dans un endroit chaud jusqu'à ce que la pâte double de volume (environ 1 heure).
3. Tapisser une plaque de four de papier cuisson et réserver.
Diviser la pâte en 3 et rouler chaque pâton sur une surface légèrement farinée pour obtenir 3 boudins d'environ 45 cm.
Les disposer côte à côte en les espaçant légèrement en éventail, souder l’une des extrémités en appuyant sur la pâte puis tresser. Souder la seconde extrémité.
Poser la tresse sur la plaque préparée, couvrir de film alimentaire ou d’un torchon humide, et laisser pousser dans un endroit chaud jusqu'à ce que la pâte ait doublé de volume (environ 30 minutes)
4. Peu de temps avant la fin du temps de pousse, préchauffer le four à 180°C
Badigeonner la brioche avec l'œuf battu, enfourner et cuire 25-30 minutes à 180°C, ou jusqu’à ce que le pain sonne creux quand on tape le dessous;",
univers:"Pain",
astuce:"il est possible de faire plusieurs petits pains au lait au lieu d'une tresse",
typeplat:"Dessert",
lienUrl:"https://www.cookomix.com/recettes/pain-cocotte-thermomix/",
commentaire: "Un pain comme chez le boulanger!",
note:"5", duree: "75", difficulte: "2", cuisson: "25", user_id: user1.id)


ingredient1 = Ingredient.create!(nom:"Beurre", quantite:"50", unite:"g",recette_id: recette4.id)
ingredient2 = Ingredient.create!(recette_id: recette4.id, nom:"Lait", quantite:"300", unite:"g")
ingredient1 = Ingredient.create!(nom:"levure fraîche", quantite:"20", unite:"g",recette_id: recette4.id)
ingredient7 = Ingredient.create!(recette_id: recette4.id, nom:"Sucre", quantite:"40", unite:"g")
ingredient4 = Ingredient.create!(recette_id: recette4.id, nom:"Farine", quantite:"550", unite:"g")
ingredient6 = Ingredient.create!(recette_id: recette4.id, nom:"Eau", quantite:"30", unite:"g")
ingredient7 = Ingredient.create!(recette_id: recette4.id, nom:"Sel", quantite:"0.5", unite:"Cuillière à café")
ingredient8 = Ingredient.create!(recette_id: recette4.id, nom:"Oeuf", quantite:"1", unite:"unité(s)")


require "open-uri"

file1 = URI.open ('https://fr.rc-cdn.community.thermomix.com/recipeimage/ghi054ta-e6628-405718-cfcd2-75w2hxw6/a8479e31-f2ad-417d-b2f0-62267b2c0680/main/la-foccacia.jpg')
recette1.photo.attach(io: file1, filename:"foccacia.png", content_type: 'image/png')

file2 = URI.open ('https://www.cookomix.com/wp-content/uploads/2016/08/pate-a-pizza-thermomix-800x600.jpg')
recette2.photo.attach(io: file2, filename:"patepizz.png", content_type: 'image/png')

file3 = URI.open ('https://www.cookomix.com/wp-content/uploads/2016/03/pain-cocotte-thermomix-800x600.jpg')
recette3.photo.attach(io: file3, filename:"paincocotte.png", content_type: 'image/png')

file4 = URI.open ('https://img.cuisineaz.com/660x660/2015-02-13/i45896-petits-pains-au-lait-facile.jpg')
recette4.photo.attach(io: file4, filename:"painaulait.png", content_type: 'image/png')

