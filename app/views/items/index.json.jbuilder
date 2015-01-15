json.array!(@items) do |item|
  json.extract! item, :id, :name, :type, :att, :def, :worth, :character_id
  json.url item_url(item, format: :json)
end
