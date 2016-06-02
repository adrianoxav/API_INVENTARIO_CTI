json.array!(@kits) do |kit|
  json.extract! kit, :id, :title, :kit_type,:number_elements, :state, :reference, :domain, :purpose, :comments
  json.url kit_url(kit, format: :json)
end
