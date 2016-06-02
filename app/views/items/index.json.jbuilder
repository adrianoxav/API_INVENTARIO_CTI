json.array!(@items) do |item|
  json.extract! item, :id, :title, :code, :type, :state, :reference, :domain, :characteristic
  json.url item_url(item, format: :json)
end
