class CreateFoodOrders < ActiveRecord::Migration
  def change
    create_table :food_orders do |t|
      t.string :name
      t.integer :quantity
      t.integer :price
      t.string :state
      t.string :takeaway

      t.timestamps
    end
  end
end
