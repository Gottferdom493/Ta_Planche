class Profil < ApplicationRecord
  validates :nom, :prenom, :email, :age, presence: true
  # belongs_to :item
  belongs_to :user

  has_one_attached :img_profil;


end
