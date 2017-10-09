class Photo < ApplicationRecord
  belongs_to :review

  mount_uploader :url, PhotoUploader, allow_destroy: true
end
