class RemoveFoodIdFromFoodOrders < ActiveRecord::Migration
  def change
    remove_column :food_orders, :food_id, :integer
  end
end
