class Photo < ApplicationRecord
  mount_uploader :url, PhotoUploader, allow_destroy: true
end
