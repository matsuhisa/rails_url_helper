json.array!(@official_photos) do |official_photo|
  json.extract! official_photo, :id, :title, :description
  json.url official_photo_url(official_photo, format: :json)
end
