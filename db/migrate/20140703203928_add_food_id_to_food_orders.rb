class AddFoodIdToFoodOrders < ActiveRecord::Migration
  def change
    add_column :food_orders, :food_id, :integer
  end
end
