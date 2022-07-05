class Item < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :famille
  belongs_to :user

  has_one_attached :photo_1;
  has_one_attached :photo_2;
  has_one_attached :photo_3;

  # has_many_attached :photo

end
