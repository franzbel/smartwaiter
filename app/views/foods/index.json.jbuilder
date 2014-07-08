json.array!(@foods) do |food|
  json.extract! food, :id, :name, :description, :availability, :photo, :price
  json.url food_url(food, format: :json)
end
