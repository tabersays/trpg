json.array!(@helpers) do |helper|
  json.extract! helper, :id, :name, :user_id
  json.url helper_url(helper, format: :json)
end
