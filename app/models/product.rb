class Product < ActiveRecord::Base
  mount_uploader :image_filename, ImageUploader
end
