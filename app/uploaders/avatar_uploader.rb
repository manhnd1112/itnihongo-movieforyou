class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    ActionController::Base.helpers.asset_path "profile.png"
  end

  version :thumb do
    process resize_to_fill: [600, 800]
  end
  
  version :small do
    process resize_to_fill: [100, 100]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
