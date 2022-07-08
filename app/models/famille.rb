class Famille < ApplicationRecord
  validates :name, :info, presence: true
  has_many :items, dependent: :destroy
  belongs_to :user
end
