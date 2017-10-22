class PhotoUploader < CarrierWave::Uploader::Base
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    ActionController::Base.helpers.asset_path "default-book.png"
  end

  version :thumb do
    process resize_to_fill: [600, 800]
  end
  
  version :small do
    process resize_to_fill: [111, 133]
  end
  
  version :flag do
    process resize_to_fill: [300, 200]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
