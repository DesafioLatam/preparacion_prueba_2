class Product < ActiveRecord::Base
  belongs_to :category
  validates :price, numericality: {greater_than: 0}
  validates :category, presence: true
  scope :premiums, -> {where(premium: true)}
  scope :last_5, ->{order('created_at DESC').limit(5)}
  scope :last_n, ->(n){order('created_at DESC').limit(n)}
  after_destroy :delete_category_after_last_product_is_destroyed

  def delete_category_after_last_product_is_destroyed
    if category.products.size == 0
      category.destroy
    end
  end

  def price_with_discount
    new_price = price - (price * my_discount / 100.0)
    new_price.to_i
  end

  def my_discount
    discount || category.discount
  end
end
