class Review < ApplicationRecord
  belongs_to :user
  belongs_to :recette
  validates :commentaire, presence: true
  validates :note, presence: true, inclusion: { in: 0..5 }
end
