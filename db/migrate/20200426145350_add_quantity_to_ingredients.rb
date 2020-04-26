class AddQuantityToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :quantite, :integer
    add_column :ingredients, :unite, :string
  end
end
