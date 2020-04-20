class Ingredient < ApplicationRecord
  belongs_to :recette
  belongs_to :quantité
end
