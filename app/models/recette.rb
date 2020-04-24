class Recette < ApplicationRecord
  belongs_to :user
  has_many  :reviews, dependent: :destroy
  has_many :whishlists, dependent: :destroy
  has_many :ingredients, dependent: :destroy

  validates :titre, presence: true, uniqueness: true
  validates :description, presence: true
  validates :type, inclusion: { in: %w(Entrée Plat Dessert)}
  validates :univers, presence: true


end
