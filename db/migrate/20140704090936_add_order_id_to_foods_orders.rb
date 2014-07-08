class AddOrderIdToFoodsOrders < ActiveRecord::Migration
  def change
    add_column :foods_orders, :order_id, :integer
  end
end
