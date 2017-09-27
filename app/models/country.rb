class Country < ApplicationRecord
  has_many :movies
  has_many :actors

  mount_uploader :flag_image, PhotoUploader
end
