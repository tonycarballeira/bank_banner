json.array!(@products) do |product|
  json.extract! product, :id, :name, :sku, :description, :ost_id, :priority
  json.url product_url(product, format: :json)
end
