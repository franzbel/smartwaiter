class RenameFoodOrdersToOrderss < ActiveRecord::Migration
  def change
  	rename_table :food_orders, :orderss
  end
end
