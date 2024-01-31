class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_one_attached :img_user;


  validates :nickname, presence: true
  has_many :familles
  has_many :profils, dependent: :destroy
end
