class RemoveFoodIdFromFoodOrdersTables < ActiveRecord::Migration
  def change
    remove_column :food_orders_tables, :food_id, :integer
  end
end
