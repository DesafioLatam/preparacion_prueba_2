class Product < ActiveRecord::Base
  belongs_to :category
  validates :price, numericality: {greater_than: 0}
  validates :category, presence: true
  scope :premiums, -> {where(premium: true)}
  scope :last_5, ->{order('created_at DESC').limit(5)}
  scope :last_n, ->(n){order('created_at DESC').limit(n)}

end
