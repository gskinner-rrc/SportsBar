class Product < ActiveRecord::Base
  belongs_to :category
  
  mount_uploader :image_filename, ImageUploader
  
  validates :name, :description, :price, :stock_quantity, :category_id, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :stock_quantity, numericality: { only_integer: true }
end
