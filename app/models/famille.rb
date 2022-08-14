class Famille < ApplicationRecord
  validates :name, :info, presence: true
  has_many :items, dependent: :destroy
  belongs_to :user

  has_one_attached :photo_famille

end
