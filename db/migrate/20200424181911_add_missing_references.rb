class AddMissingReferences < ActiveRecord::Migration[6.0]
  def change
    add_column :recettes, :etiquette, :string
  end
end
