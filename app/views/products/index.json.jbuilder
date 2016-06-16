json.array!(@products) do |product|
  json.extract! product, :id, :title, :asin, :price
  json.url product_url(product, format: :json)
end
