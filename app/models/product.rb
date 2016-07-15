class Product < ActiveRecord::Base
  belongs_to :category
  validates :price, numericality: {greater_than: 0}
  validates :category, presence: true 
end
