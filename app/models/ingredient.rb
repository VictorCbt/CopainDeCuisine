class Ingredient < ApplicationRecord
  belongs_to :recette
  has_many :quantites
end
