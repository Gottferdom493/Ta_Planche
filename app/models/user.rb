class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  has_many :profils, dependent: :destroy


  has_one_attached :img_user;

  has_one :profil

  validates :nickname, presence: true
  has_many :familles
  has_many :items
  # has_many :profils, dependent: :destroy
end
