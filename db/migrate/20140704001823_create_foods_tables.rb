class CreateFoodsTables < ActiveRecord::Migration
  def change
    create_table :foods_tables, :id => false do |t|
    	t.references :food
    	t.references :table
    end
  end
  def self.down
  	drop_table :foods_tables
  end
end
