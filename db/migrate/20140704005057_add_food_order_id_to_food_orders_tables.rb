class AddFoodOrderIdToFoodOrdersTables < ActiveRecord::Migration
  def change
    add_column :food_orders_tables, :food_order_id, :integer
  end
end
