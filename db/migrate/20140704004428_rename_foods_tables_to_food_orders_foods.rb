class RenameFoodsTablesToFoodOrdersFoods < ActiveRecord::Migration
  def change
 	rename_table :foods_tables, :food_orders_tables
  end
end
