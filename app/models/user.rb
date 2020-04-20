class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :recettes
  has_many :reviews
  has_many :whishlists
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
