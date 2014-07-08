class RenameFoodOrdersFoodToFoodOrdersFoods < ActiveRecord::Migration
  def change
  	rename_table :food_orders_food, :food_orders_foods
  end
end
