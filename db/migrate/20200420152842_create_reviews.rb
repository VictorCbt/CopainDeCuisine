class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :note
      t.text :commentaire
      t.references :recette, null: false, foreign_key: true

      t.timestamps
    end
  end
end
