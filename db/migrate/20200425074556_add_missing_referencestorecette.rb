class AddMissingReferencestorecette < ActiveRecord::Migration[6.0]
  def change
    add_reference :recettes, :user, foreign_key: true
  end
end
