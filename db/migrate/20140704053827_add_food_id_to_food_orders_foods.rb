class AddFoodIdToFoodOrdersFoods < ActiveRecord::Migration
  def change
    add_column :food_orders_foods, :food_id, :integer
  end
end
