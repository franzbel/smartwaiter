class RenameOrderssToOrders < ActiveRecord::Migration
  def change
  	rename_table :orderss, :order
  end
end
