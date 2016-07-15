class AddPremiumToProduct < ActiveRecord::Migration
  def change
    add_column :products, :premium, :boolean, default: false
  end
end
