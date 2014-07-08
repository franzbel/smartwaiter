class RemovePriceFromFoodOrders < ActiveRecord::Migration
  def change
    remove_column :food_orders, :price, :integer
  end
end
