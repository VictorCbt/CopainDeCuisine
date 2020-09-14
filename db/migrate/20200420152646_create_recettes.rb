class CreateRecettes < ActiveRecord::Migration[6.0]
  def change
    create_table :recettes do |t|
      t.text :titre
      t.text :description
      t.text :variante
      t.text :type
      t.text :univers
      t.text :astuce
      t.text :lienUrl
      t.text :commentaire
      t.text :etiquette
      t.integer :duree
      t.integer :difficulte
      t.integer :cuisson
      t.integer :note

      t.timestamps

    end
  end
end
