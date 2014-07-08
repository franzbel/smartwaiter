json.array!(@food_orders) do |food_order|
  json.extract! food_order, :id, :name, :quantity, :price, :state, :takeaway
  json.url food_order_url(food_order, format: :json)
end
