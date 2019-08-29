class Shelf < ApplicationRecord
  mount_uploader :shelf_img, ImageUploader
  has_many :items
end
