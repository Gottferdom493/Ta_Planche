class Famille < ApplicationRecord
  validates :name, :info, presence: true
  has_many :items, dependent: :destroy
  
end
