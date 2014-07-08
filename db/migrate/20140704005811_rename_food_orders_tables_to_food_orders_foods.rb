class RenameFoodOrdersTablesToFoodOrdersFoods < ActiveRecord::Migration
  def change
  	rename_table :food_orders_tables, :food_orders_foods
  end
end
