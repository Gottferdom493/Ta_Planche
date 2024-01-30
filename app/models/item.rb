class Item < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :famille
  belongs_to :user

  # has_many :profils

  has_one_attached :photo_1;
  has_one_attached :photo_2;
  has_one_attached :photo_3;

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # has_many_attached :photo

end
