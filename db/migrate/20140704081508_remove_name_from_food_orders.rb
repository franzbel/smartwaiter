class RemoveNameFromFoodOrders < ActiveRecord::Migration
  def change
    remove_column :food_orders, :name, :string
  end
end
