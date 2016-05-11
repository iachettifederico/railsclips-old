json.array!(@featured_images) do |featured_image|
  json.extract! featured_image, :id, :url, :post_id
  json.url featured_image_url(featured_image, format: :json)
end
