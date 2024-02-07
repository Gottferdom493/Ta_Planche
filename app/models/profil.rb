class Profil < ApplicationRecord
  validates :nom, :prenom, presence: true
  # belongs_to :item
  belongs_to :user

  has_one_attached :img_profil;


  before_validation :set_default_name

  validates :date_naissance, presence: true

  # information ajouté par default

  private

  def set_default_name
    self.nom = "info manquante" if nom.blank?
    self.prenom = "info manquante" if prenom.blank?
  end

end
