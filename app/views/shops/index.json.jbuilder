json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :description, :state
  json.url shop_url(shop, format: :json)
end
