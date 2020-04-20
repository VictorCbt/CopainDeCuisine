class CreateWhishlists < ActiveRecord::Migration[6.0]
  def change
    create_table :whishlists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :recette, null: false, foreign_key: true
      t.bolean :statut

      t.timestamps
    end
  end
end
