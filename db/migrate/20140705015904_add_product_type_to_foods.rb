class AddProductTypeToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :product_type, :string
  end
end
