class Item < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :famille
end
