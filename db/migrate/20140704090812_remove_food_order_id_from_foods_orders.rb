class RemoveFoodOrderIdFromFoodsOrders < ActiveRecord::Migration
  def change
    remove_column :foods_orders, :food_order_id, :integer
  end
end
