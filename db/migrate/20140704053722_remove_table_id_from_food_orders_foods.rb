class RemoveTableIdFromFoodOrdersFoods < ActiveRecord::Migration
  def change
    remove_column :food_orders_foods, :table_id, :integer
  end
end
