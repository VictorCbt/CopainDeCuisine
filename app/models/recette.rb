class Recette < ApplicationRecord
  belongs_to :user
  has_many  :reviews, dependent: :destroy
  has_many :whishlists, dependent: :destroy
  has_many :ingredients, dependent: :destroy
  has_one_attached :photo
  validates :titre, presence: true, uniqueness: true
  validates :description, presence: true
  validates :typeplat, presence: true
  validates :univers, presence: true


end
