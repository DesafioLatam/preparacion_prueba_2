class AddDiscountToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :discount, :integer, default: 0
  end
end
