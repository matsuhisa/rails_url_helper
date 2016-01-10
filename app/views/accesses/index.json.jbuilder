json.array!(@accesses) do |access|
  json.extract! access, :id, :how_to, :holiday
  json.url access_url(access, format: :json)
end
