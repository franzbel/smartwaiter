class RenameOrderToOrders < ActiveRecord::Migration
  def change
  	rename_table :order, :orders
  end
end
