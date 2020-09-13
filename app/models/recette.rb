class Recette < ApplicationRecord
  belongs_to :user
  has_many  :reviews, dependent: :destroy
  has_many :whishlists, dependent: :destroy
  has_many :ingredients, dependent: :destroy
  has_one_attached :photo
  validates :titre, presence: true
  validates :description, presence: true
  validates :typeplat, presence: true
  validates :univers, presence: true
  validates :description, presence: true
  validates :difficulte, presence: true

  validates :note
  validates :duree, presence: true


  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :titre, :univers ],
    associated_against: {
      user: [ :pseudo ]
    },
    using: {
      tsearch: { prefix: true }
    }
end

def self.search(search)
  if search
    Recette.where('lower(address) LIKE ?', search[:univers].downcase)
  else
    Recette.all
  end
end
