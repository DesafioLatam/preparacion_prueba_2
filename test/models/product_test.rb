require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  setup do
    @product = products(:p1c1)
  end
  test "Price must be greater than cero" do
    @product.price = 0
    assert_not @product.valid?
  end

  test "Product must have category" do
    @product.category = nil
    assert_not @product.valid?
  end

  test "Product must have default premium as false" do
    assert products(:p2c3).premium == false
  end

  test "Scope premiums must have only trues" do
      values = Product.premiums.collect(&:premium) # [true, false, true]
      assert_not_includes(values, false)
  end

  test "fixture" do
      assert @product.valid?
  end
end
