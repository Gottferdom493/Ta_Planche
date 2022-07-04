class Item < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :famille

  has_one_attached :img_avatar

end
