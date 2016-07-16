require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "delete on cascade" do
    cat = categories(:one)
    cat.destroy
    assert_equal 0, cat.products.count
  end
end
