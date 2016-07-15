require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  setup do
    @product = products(:p1c1)
  end
  test "Price must be greater than cero" do
    @product.price = 0
    assert_not @product.valid?
  end

  test "el producto debe tener categoria" do
    @product.category = nil
    assert_not @product.valid?
  end

end
