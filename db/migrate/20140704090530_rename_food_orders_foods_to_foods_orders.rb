class RenameFoodOrdersFoodsToFoodsOrders < ActiveRecord::Migration
  def change
  	rename_table :food_orders_foods, :foods_orders
  end
end
