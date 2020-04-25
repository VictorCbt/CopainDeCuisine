class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.references :recette, null: false, foreign_key: true
      t.text :nom

      t.timestamps
    end
  end
end
