class UnitType < ActiveRecord::Base
  has_many :units
  mount_uploader :image, ImageUploader
end
